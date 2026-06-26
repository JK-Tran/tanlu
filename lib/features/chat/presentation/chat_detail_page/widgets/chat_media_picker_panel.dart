import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:tanlu_management/core/constants/chat_constants.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class ChatMediaPickerPanel extends StatefulWidget {
  const ChatMediaPickerPanel({
    super.key,
    required this.onSend,
    required this.onClose,
    this.onOpenCamera,
  });

  final ValueChanged<List<String>> onSend;
  final VoidCallback onClose;
  final VoidCallback? onOpenCamera;

  @override
  State<ChatMediaPickerPanel> createState() => ChatMediaPickerPanelState();
}

class ChatMediaPickerPanelState extends State<ChatMediaPickerPanel>
    with WidgetsBindingObserver {
  static final _imagePicker = ImagePicker();

  List<AssetEntity> _recentAssets = [];
  final List<XFile> _additionalImages = [];
  final Set<AssetEntity> _selectedAssets = {};
  final Set<String> _selectedAdditionalPaths = {};

  bool _isLoading = false;
  bool _isLimitedAccess = false;
  bool _isOpeningPicker = false;
  bool _isOpeningSetting = false;

  int get _selectedCount =>
      _selectedAssets.length + _selectedAdditionalPaths.length;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadRecentImages();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _isOpeningSetting && mounted) {
      _loadRecentImages();
    }
  }

  Future<void> _loadRecentImages() async {
    if (!mounted) return;

    setState(() {
      _isLoading = true;
      _isLimitedAccess = false;
    });

    try {
      await PhotoManager.clearFileCache();

      if (!mounted) return;

      var permission = await PhotoManager.requestPermissionExtend(
        requestOption: const PermissionRequestOption(
          androidPermission: AndroidPermission(
            type: RequestType.image,
            mediaLocation: false,
          ),
        ),
      );

      if (permission == PermissionState.denied) {
        permission = await PhotoManager.requestPermissionExtend();
      }

      if (!mounted) return;

      if (!permission.isAuth) {
        setState(() {
          _recentAssets = [];
          _isLimitedAccess = true;
          _isLoading = false;
          _isOpeningSetting = false;
        });
        return;
      }

      List<AssetPathEntity> albums = [];
      try {
        albums = await PhotoManager.getAssetPathList(
          onlyAll: true,
          type: RequestType.image,
          filterOption: FilterOptionGroup(
            imageOption: const FilterOption(
              sizeConstraint: SizeConstraint(ignoreSize: true),
            ),
            updateTimeCond: DateTimeCond(
              min: DateTime(2000),
              max: DateTime.now(),
            ),
          ),
        );
      } catch (_) {
        albums = await PhotoManager.getAssetPathList(
          onlyAll: true,
          type: RequestType.image,
        );
      }

      if (!mounted) return;

      if (albums.isEmpty) {
        setState(() {
          _recentAssets = [];
          _isLimitedAccess = true;
          _isLoading = false;
          _isOpeningSetting = false;
        });
        return;
      }

      final assets = await albums.first.getAssetListPaged(page: 0, size: 1000);

      if (!mounted) return;

      setState(() {
        _recentAssets = assets;
        _isLimitedAccess = permission == PermissionState.limited;
        _isLoading = false;
        _isOpeningSetting = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _recentAssets = [];
        _isLimitedAccess = true;
        _isLoading = false;
        _isOpeningSetting = false;
      });
    }
  }

  Future<void> _requestMorePhotos() async {
    if (_isOpeningPicker || !mounted) return;

    final remaining = ChatConstants.maxImagesPerSend - _additionalImages.length;
    if (remaining <= 0) {
      AppSnackbar.show(
        context,
        message: 'Tối đa ${ChatConstants.maxImagesPerSend} ảnh mỗi lần gửi',
        type: AppSnackbarType.info,
      );
      return;
    }

    setState(() => _isOpeningPicker = true);
    try {
      final picked = await _imagePicker.pickMultiImage(
        imageQuality: 85,
        limit: remaining,
      );

      if (!mounted) return;

      if (picked.isNotEmpty) {
        final existing = _additionalImages.map((e) => e.path).toSet();
        final added = picked.where((f) => !existing.contains(f.path)).toList();
        if (added.isNotEmpty) {
          setState(() => _additionalImages.addAll(added));
        }
      }
    } catch (_) {
      if (!mounted) return;
      AppSnackbar.show(
        context,
        message: 'Không thể mở thư viện ảnh',
        type: AppSnackbarType.error,
      );
    } finally {
      if (mounted) setState(() => _isOpeningPicker = false);
    }
  }

  Future<void> _openPhotoSettings() async {
    if (_isOpeningSetting || !mounted) return;

    setState(() => _isOpeningSetting = true);
    try {
      await PhotoManager.openSetting();
    } catch (_) {
      if (mounted) setState(() => _isOpeningSetting = false);
    }
  }

  void _toggleAsset(AssetEntity asset) {
    setState(() {
      if (_selectedAssets.contains(asset)) {
        _selectedAssets.remove(asset);
      } else if (_selectedCount < ChatConstants.maxImagesPerSend) {
        _selectedAssets.add(asset);
      } else {
        _showMaxSelectionSnackBar();
      }
    });
  }

  void _toggleAdditional(XFile file) {
    setState(() {
      if (_selectedAdditionalPaths.contains(file.path)) {
        _selectedAdditionalPaths.remove(file.path);
      } else if (_selectedCount < ChatConstants.maxImagesPerSend) {
        _selectedAdditionalPaths.add(file.path);
      } else {
        _showMaxSelectionSnackBar();
      }
    });
  }

  void _showMaxSelectionSnackBar() {
    AppSnackbar.show(
      context,
      message: 'Chỉ chọn tối đa ${ChatConstants.maxImagesPerSend} ảnh',
      type: AppSnackbarType.info,
    );
  }

  void clearSelections() {
    if (!mounted) return;
    setState(() {
      _selectedAssets.clear();
      _selectedAdditionalPaths.clear();
    });
  }

  Future<void> _sendSelected() async {
    if (_selectedCount == 0) return;

    final paths = <String>[];

    for (final path in _selectedAdditionalPaths) {
      paths.add(path);
    }

    for (final asset in _selectedAssets) {
      final file = await asset.originFile ?? await asset.file;
      final path = file?.path;
      if (path != null && path.isNotEmpty) {
        paths.add(path);
      }
    }

    if (paths.isEmpty) return;
    clearSelections();
    widget.onSend(paths);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeOutCubic,
      height: MediaQuery.sizeOf(context).height * 0.4,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(top: BorderSide(color: AppColors.grayLight, width: 0.5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 8,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildHeader(),
          Expanded(child: _buildBody()),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    final canSend = _selectedCount > 0 && !_isOpeningPicker;

    return Container(
      padding: EdgeInsets.fromLTRB(4.w, 4.h, 8.w, 8.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.grayLight)),
      ),
      child: Row(
        children: [
          if (widget.onOpenCamera != null)
            TextButton.icon(
              onPressed: widget.onOpenCamera,
              icon: Icon(Icons.camera_alt_outlined, size: 18.sp),
              label: AppText.b2(
                'Chụp ảnh',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
          const Spacer(),
          if (_selectedCount > 0)
            Container(
              margin: EdgeInsets.only(right: 8.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: AppText.b2(
                '$_selectedCount/${ChatConstants.maxImagesPerSend}',
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
          TextButton(
            onPressed: canSend ? _sendSelected : null,
            child: AppText.b1(
              'Gửi',
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: canSend ? AppColors.primary : AppColors.grayMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_isLimitedAccess) {
      return _buildLimitedAccessView();
    }

    if (_recentAssets.isEmpty && _additionalImages.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.photo_library_outlined,
              size: 48.sp,
              color: AppColors.grayMedium,
            ),
            SizedBox(height: 12.h),
            AppText.b2(
              'Không có ảnh trong thư viện',
              fontSize: 13.sp,
              color: AppColors.grayMedium,
            ),
            SizedBox(height: 16.h),
            FilledButton.icon(
              onPressed: _isOpeningPicker ? null : _requestMorePhotos,
              style: FilledButton.styleFrom(backgroundColor: AppColors.primary),
              icon: const Icon(Icons.add_photo_alternate_outlined),
              label: Text(_isOpeningPicker ? 'Đang mở...' : 'Chọn ảnh'),
            ),
          ],
        ),
      );
    }

    return _buildHybridGrid(includeLibrary: true);
  }

  Widget _buildLimitedAccessView() {
    if (_additionalImages.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.photo_library_outlined,
              size: 48.sp,
              color: AppColors.grayMedium,
            ),
            SizedBox(height: 12.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: AppText.b2(
                'Chọn ảnh từ thư viện hệ thống (không cần quyền đọc toàn bộ ảnh).',
                fontSize: 12.sp,
                color: AppColors.grayMedium,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16.h),
            FilledButton.icon(
              onPressed: _isOpeningPicker ? null : _requestMorePhotos,
              style: FilledButton.styleFrom(backgroundColor: AppColors.primary),
              icon: const Icon(Icons.add_photo_alternate_outlined),
              label: Text(_isOpeningPicker ? 'Đang mở...' : 'Chọn từ thư viện'),
            ),
            TextButton(
              onPressed: _openPhotoSettings,
              child: const Text('Mở cài đặt quyền'),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: _isOpeningPicker ? null : _requestMorePhotos,
            child: AppText.b2(
              _isOpeningPicker ? 'Đang mở...' : 'Thêm ảnh',
              fontSize: 12.sp,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Expanded(child: _buildHybridGrid(includeLibrary: false)),
      ],
    );
  }

  Widget _buildHybridGrid({required bool includeLibrary}) {
    final libraryCount = includeLibrary ? _recentAssets.length : 0;
    final itemCount = _additionalImages.length + libraryCount;

    return Padding(
      padding: EdgeInsets.fromLTRB(12.w, 0, 12.w, 8.h),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.h,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          if (index < _additionalImages.length) {
            final file = _additionalImages[index];
            return _ImageTile(
              image: FileImage(File(file.path)),
              isSelected: _selectedAdditionalPaths.contains(file.path),
              onTap: () => _toggleAdditional(file),
            );
          }

          final asset = _recentAssets[index - _additionalImages.length];
          return _ImageTile(
            image: AssetEntityImageProvider(
              asset,
              isOriginal: false,
              thumbnailSize: const ThumbnailSize.square(300),
            ),
            isSelected: _selectedAssets.contains(asset),
            onTap: () => _toggleAsset(asset),
          );
        },
      ),
    );
  }
}

class _ImageTile extends StatelessWidget {
  const _ImageTile({
    required this.image,
    required this.isSelected,
    required this.onTap,
  });

  final ImageProvider image;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(image: image, fit: BoxFit.cover),
            if (isSelected)
              Container(color: AppColors.primary.withValues(alpha: 0.25)),
            if (isSelected)
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primary, width: 2.5),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            if (isSelected)
              Positioned(
                top: 4,
                right: 4,
                child: Container(
                  width: 22.r,
                  height: 22.r,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.check, color: Colors.white, size: 14),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
