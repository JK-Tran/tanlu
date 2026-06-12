import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class InlinePhotoPicker extends StatefulWidget {
  final ValueChanged<List<String>> onImagesSelected;
  final VoidCallback onOpenGallery;

  const InlinePhotoPicker({
    super.key,
    required this.onImagesSelected,
    required this.onOpenGallery,
  });

  @override
  State<InlinePhotoPicker> createState() => _InlinePhotoPickerState();
}

class _InlinePhotoPickerState extends State<InlinePhotoPicker> {
  List<AssetEntity> _assets = [];
  final List<AssetEntity> _selectedAssets = [];
  bool _isLoading = true;
  bool _hasPermission = false;

  @override
  void initState() {
    super.initState();
    _fetchAssets();
  }

  Future<void> _fetchAssets() async {
    final PermissionState ps = await PhotoManager.requestPermissionExtend();
    if (ps.isAuth || ps.hasAccess) {
      setState(() => _hasPermission = true);
      // Lấy tất cả ảnh
      List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(
        type: RequestType.image,
        onlyAll: true,
      );

      if (albums.isNotEmpty) {
        // Lấy 50 ảnh gần nhất
        List<AssetEntity> recentAssets = await albums.first.getAssetListPaged(
          page: 0,
          size: 50,
        );
        setState(() {
          _assets = recentAssets;
          _isLoading = false;
        });
      } else {
        setState(() => _isLoading = false);
      }
    } else {
      setState(() {
        _hasPermission = false;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (!_hasPermission) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.photo_library_outlined,
            size: 48.w,
            color: AppColors.grayMedium,
          ),
          SizedBox(height: 12.h),
          Text(
            'Chưa có quyền truy cập ảnh',
            style: AppText.styleOf(
              context,
              StyleEnum.b1,
            )?.copyWith(color: AppColors.grayDark, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8.h),
          TextButton(
            onPressed: () {
              PhotoManager.openSetting();
            },
            child: Text(
              'Mở Cài đặt',
              style: AppText.styleOf(
                context,
                StyleEnum.b2,
              )?.copyWith(color: AppColors.primary),
            ),
          ),
        ],
      );
    }

    if (_assets.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.image_not_supported_outlined,
            size: 48.w,
            color: AppColors.grayMedium,
          ),
          SizedBox(height: 12.h),
          Text(
            'Không tìm thấy ảnh nào',
            style: AppText.styleOf(
              context,
              StyleEnum.b1,
            )?.copyWith(color: AppColors.grayMedium),
          ),
        ],
      );
    }

    return Container(
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header bar like Zalo/Messenger
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _selectedAssets.isEmpty
                    ? Text(
                        'Ảnh gần đây',
                        style: AppText.styleOf(context, StyleEnum.b1)?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.grayDark,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedAssets.clear();
                          });
                        },
                        child: Text(
                          'Bỏ chọn',
                          style: AppText.styleOf(context, StyleEnum.b1)?.copyWith(
                            color: AppColors.grayDark,
                          ),
                        ),
                      ),
                _selectedAssets.isEmpty
                    ? GestureDetector(
                        onTap: widget.onOpenGallery,
                        child: Row(
                          children: [
                            Icon(Icons.photo_library_rounded, color: AppColors.primary, size: 18.w),
                            SizedBox(width: 4.w),
                            Text(
                              'Thư viện',
                              style: AppText.styleOf(context, StyleEnum.b1)?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.primary,
                              ),
                            ),
                          ],
                        ),
                      )
                    : GestureDetector(
                        onTap: () async {
                          List<String> paths = [];
                          for (var asset in _selectedAssets) {
                            final file = await asset.file;
                            if (file != null) paths.add(file.path);
                          }
                          widget.onImagesSelected(paths);
                          setState(() {
                            _selectedAssets.clear();
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Text(
                            'Gửi ${_selectedAssets.length}',
                            style: AppText.styleOf(context, StyleEnum.b1)?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemCount: _assets.length,
              itemBuilder: (context, index) {
                final asset = _assets[index];
                final isSelected = _selectedAssets.contains(asset);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isSelected) {
                        _selectedAssets.remove(asset);
                      } else {
                        _selectedAssets.add(asset);
                      }
                    });
                  },
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      AssetThumbnail(asset: asset),
                      if (isSelected)
                        Container(
                          color: AppColors.black.withValues(alpha: 0.4),
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.all(4.w),
                          child: Container(
                            width: 20.w,
                            height: 20.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primary,
                            ),
                            child: Icon(Icons.check, size: 14.w, color: AppColors.white),
                          ),
                        ),
                      if (!isSelected)
                        Positioned(
                          top: 4.w,
                          right: 4.w,
                          child: Container(
                            width: 20.w,
                            height: 20.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColors.white, width: 1.5),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AssetThumbnail extends StatefulWidget {
  final AssetEntity asset;

  const AssetThumbnail({super.key, required this.asset});

  @override
  State<AssetThumbnail> createState() => _AssetThumbnailState();
}

class _AssetThumbnailState extends State<AssetThumbnail> {
  Future<Uint8List?>? _future;

  @override
  void initState() {
    super.initState();
    _future = widget.asset.thumbnailDataWithSize(const ThumbnailSize(200, 200));
  }

  @override
  void didUpdateWidget(AssetThumbnail oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.asset.id != widget.asset.id) {
      _future = widget.asset.thumbnailDataWithSize(const ThumbnailSize(200, 200));
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List?>(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.memory(
            snapshot.data!,
            fit: BoxFit.cover,
            gaplessPlayback: true,
          );
        }
        return Container(color: AppColors.grayLight);
      },
    );
  }
}
