import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:tanlu_management/core/constants/app_media_limit.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/bloc/create_feed_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/feed_app_bar.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';

class MediaPickerPage extends StatefulWidget {
  const MediaPickerPage({
    super.key,
    required this.maxImages,
    required this.maxVideos,
  });

  final int maxImages;
  final int maxVideos;

  static Future<List<CreateFeedLocalMedia>?> open(
    BuildContext context, {
    required int maxImages,
    required int maxVideos,
  }) {
    return Navigator.of(context).push<List<CreateFeedLocalMedia>>(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (_) => MediaPickerPage(
          maxImages: maxImages,
          maxVideos: maxVideos,
        ),
      ),
    );
  }

  @override
  State<MediaPickerPage> createState() =>
      _MediaPickerPageState();
}

class _MediaPickerPageState extends State<MediaPickerPage> {
  static const _pageSize = 60;

  /// Newest photos/videos first (gallery-style).
  static final _mediaFilter = FilterOptionGroup(
    orders: const [OrderOption(type: OrderOptionType.createDate, asc: false)],
  );

  final _scrollController = ScrollController();
  final _selected = <AssetEntity>[];

  AssetPathEntity? _album;
  List<AssetEntity> _assets = [];
  bool _isLoading = true;
  bool _isLoadingMore = false;
  bool _hasMore = true;
  bool _isExporting = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _initAlbum();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _initAlbum() async {
    final permission = await PhotoManager.requestPermissionExtend();
    if (!permission.isAuth) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Cần quyền truy cập thư viện ảnh';
      });
      return;
    }

    final albums = await PhotoManager.getAssetPathList(
      type: RequestType.common,
      onlyAll: true,
      filterOption: _mediaFilter,
    );

    if (albums.isEmpty) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Không tìm thấy ảnh trong thư viện';
      });
      return;
    }

    _album = albums.first;
    await _loadAssets(reset: true);
  }

  Future<void> _loadAssets({required bool reset}) async {
    final album = _album;
    if (album == null) return;

    if (reset) {
      setState(() {
        _isLoading = true;
        _assets = [];
        _hasMore = true;
      });
    } else {
      if (_isLoadingMore || !_hasMore) return;
      setState(() => _isLoadingMore = true);
    }

    final start = reset ? 0 : _assets.length;
    final batch = await album.getAssetListPaged(
      page: start ~/ _pageSize,
      size: _pageSize,
    );

    if (!mounted) return;

    setState(() {
      if (reset) {
        _assets = batch;
      } else {
        _assets = [..._assets, ...batch];
      }
      _hasMore = batch.length >= _pageSize;
      _isLoading = false;
      _isLoadingMore = false;
    });
  }

  void _onScroll() {
    if (!_scrollController.hasClients || _isLoadingMore || !_hasMore) return;
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 240) {
      _loadAssets(reset: false);
    }
  }

  bool _isSelected(AssetEntity asset) {
    return _selected.any((item) => item.id == asset.id);
  }

  int _selectionIndex(AssetEntity asset) {
    return _selected.indexWhere((item) => item.id == asset.id);
  }

  int _selectedImageCount() =>
      _selected.where((item) => item.type != AssetType.video).length;

  int _selectedVideoCount() =>
      _selected.where((item) => item.type == AssetType.video).length;

  Future<bool> _validateVideoSize(AssetEntity asset) async {
    final file = await asset.originFile ?? await asset.file;
    if (file == null) {
      if (!mounted) return false;
      AppSnackbar.show(
        context,
        message: 'Không đọc được file video',
        type: AppSnackbarType.error,
      );
      return false;
    }

    final size = await file.length();
    if (size > AppMediaLimit.maxVideoBytes) {
      if (!mounted) return false;
      AppSnackbar.show(
        context,
        message:
            'Video tối đa ${AppMediaLimit.maxVideoMegabytes} MB '
            '(file này: ${StringUtils.formatBytes(size)})',
        type: AppSnackbarType.warning,
      );
      return false;
    }

    return true;
  }

  Future<void> _toggleAsset(AssetEntity asset) async {
    final index = _selectionIndex(asset);
    if (index >= 0) {
      setState(() => _selected.removeAt(index));
      return;
    }

    final isVideo = asset.type == AssetType.video;
    if (isVideo) {
      if (widget.maxVideos <= 0 || _selectedVideoCount() >= widget.maxVideos) {
        AppSnackbar.show(
          context,
          message: 'Chỉ chọn tối đa ${widget.maxVideos} video mỗi bài',
          type: AppSnackbarType.warning,
        );
        return;
      }
      if (!await _validateVideoSize(asset)) return;
    } else {
      if (widget.maxImages <= 0 || _selectedImageCount() >= widget.maxImages) {
        AppSnackbar.show(
          context,
          message: 'Chỉ chọn tối đa ${widget.maxImages} ảnh mỗi bài',
          type: AppSnackbarType.warning,
        );
        return;
      }
    }

    if (!mounted) return;
    setState(() => _selected.add(asset));
  }

  Future<void> _onConfirm() async {
    if (_selected.isEmpty || _isExporting) return;

    setState(() => _isExporting = true);

    final items = <CreateFeedLocalMedia>[];
    var skippedOversizedVideos = 0;

    for (final asset in _selected) {
      final isVideo = asset.type == AssetType.video;
      final file = await asset.originFile ?? await asset.file;
      if (file == null) continue;

      if (isVideo) {
        final size = await file.length();
        if (size > AppMediaLimit.maxVideoBytes) {
          skippedOversizedVideos++;
          continue;
        }
      }

      items.add((path: file.path, isVideo: isVideo));
    }

    if (!mounted) return;

    if (items.isEmpty) {
      setState(() => _isExporting = false);
      AppSnackbar.show(
        context,
        message: skippedOversizedVideos > 0
            ? 'Video vượt quá ${AppMediaLimit.maxVideoMegabytes} MB'
            : 'Không thể lấy file đã chọn',
        type: AppSnackbarType.error,
      );
      return;
    }

    if (skippedOversizedVideos > 0) {
      AppSnackbar.show(
        context,
        message:
            'Đã bỏ qua $skippedOversizedVideos video vượt '
            '${AppMediaLimit.maxVideoMegabytes} MB',
        type: AppSnackbarType.info,
      );
    }

    Navigator.of(context).pop(items);
  }

  @override
  Widget build(BuildContext context) {
    final canConfirm = _selected.isNotEmpty && !_isExporting;

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: FeedAppBar(
        showBack: true,
        title: 'Thư viện',
        trailing: SizedBox(
          width: 72.w,
          child: TextButton(
            onPressed: canConfirm ? _onConfirm : null,
            child: _isExporting
                ? SizedBox(
                    width: 18.w,
                    height: 18.w,
                    child: const CircularProgressIndicator(strokeWidth: 2),
                  )
                : AppText.b1(
                    _selected.isEmpty ? 'Tiếp' : 'Tiếp (${_selected.length})',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: canConfirm
                        ? AppColors.primary
                        : AppColors.grayMedium,
                  ),
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_errorMessage != null) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: AppText.b1(
            _errorMessage!,
            fontSize: 12.sp,
            color: AppColors.grayMedium,
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    if (_assets.isEmpty) {
      return Center(
        child: AppText.b1(
          'Thư viện trống',
          fontSize: 12.sp,
          color: AppColors.grayMedium,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 8.h),
          child: AppText.b2(
            'Chọn tối đa ${widget.maxImages} ảnh, ${widget.maxVideos} video '
            '(≤${AppMediaLimit.maxVideoMegabytes} MB), rồi nhấn Tiếp',
            fontSize: 10.sp,
            color: AppColors.grayMedium,
          ),
        ),
        Expanded(
          child: GridView.builder(
            controller: _scrollController,
            padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 6.w,
              mainAxisSpacing: 6.h,
            ),
            itemCount: _assets.length + (_isLoadingMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index >= _assets.length) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                );
              }

              final asset = _assets[index];
              final selected = _isSelected(asset);
              final order = selected ? _selectionIndex(asset) + 1 : null;

              return _MediaTile(
                key: ValueKey(asset.id),
                asset: asset,
                selected: selected,
                order: order,
                onTap: () => _toggleAsset(asset),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _MediaTile extends StatelessWidget {
  const _MediaTile({
    super.key,
    required this.asset,
    required this.selected,
    required this.onTap,
    this.order,
  });

  final AssetEntity asset;
  final bool selected;
  final int? order;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isVideo = asset.type == AssetType.video;
    final radius = BorderRadius.circular(8.r);
    final borderWidth = 2.w;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: radius,
              child: RepaintBoundary(
                child: _CachedAssetThumbnail(asset: asset),
              ),
            ),
            Positioned.fill(
              child: IgnorePointer(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 120),
                  curve: Curves.easeOut,
                  decoration: BoxDecoration(
                    borderRadius: radius,
                    border: Border.all(
                      color: selected ? AppColors.primary : Colors.transparent,
                      width: borderWidth,
                      strokeAlign: BorderSide.strokeAlignInside,
                    ),
                  ),
                ),
              ),
            ),
            if (isVideo)
              Center(
                child: Container(
                  padding: EdgeInsets.all(6.w),
                  decoration: BoxDecoration(
                    color: AppColors.black.withValues(alpha: 0.45),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: AppColors.white,
                    size: 18.w,
                  ),
                ),
              ),
            Positioned(
              top: 6,
              right: 6,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 120),
                curve: Curves.easeOut,
                width: 22.w,
                height: 22.w,
                decoration: BoxDecoration(
                  color: selected
                      ? AppColors.primary
                      : AppColors.white.withValues(alpha: 0.92),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: selected ? AppColors.primary : AppColors.grayLight,
                    width: 1.5,
                  ),
                ),
                alignment: Alignment.center,
                child: selected
                    ? AppText.b2(
                        '$order',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CachedAssetThumbnail extends StatefulWidget {
  const _CachedAssetThumbnail({required this.asset});

  final AssetEntity asset;

  @override
  State<_CachedAssetThumbnail> createState() => _CachedAssetThumbnailState();
}

class _CachedAssetThumbnailState extends State<_CachedAssetThumbnail> {
  static final _bytesCache = <String, Uint8List>{};
  static final _futureCache = <String, Future<Uint8List?>>{};

  Uint8List? _bytes;

  @override
  void initState() {
    super.initState();
    final cached = _bytesCache[widget.asset.id];
    if (cached != null) {
      _bytes = cached;
      return;
    }
    _loadThumbnail();
  }

  @override
  void didUpdateWidget(covariant _CachedAssetThumbnail oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.asset.id == widget.asset.id) return;

    final cached = _bytesCache[widget.asset.id];
    if (cached != null) {
      setState(() => _bytes = cached);
      return;
    }

    setState(() => _bytes = null);
    _loadThumbnail();
  }

  void _loadThumbnail() {
    final future = _futureCache.putIfAbsent(
      widget.asset.id,
      () => widget.asset.thumbnailDataWithSize(const ThumbnailSize.square(240)),
    );

    future.then((data) {
      if (!mounted || data == null) return;
      _bytesCache[widget.asset.id] = data;
      setState(() => _bytes = data);
    });
  }

  @override
  Widget build(BuildContext context) {
    final bytes = _bytes;
    if (bytes != null) {
      return Image.memory(
        bytes,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
        gaplessPlayback: true,
      );
    }

    return const ColoredBox(color: AppColors.grayVeryLight);
  }
}
