import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class InlineMediaPicker extends StatefulWidget {
  const InlineMediaPicker({super.key, required this.onImagesSelected});

  final ValueChanged<List<File>> onImagesSelected;

  @override
  State<InlineMediaPicker> createState() => _InlineMediaPickerState();
}

class _InlineMediaPickerState extends State<InlineMediaPicker> {
  List<AssetEntity> _assets = [];
  final List<AssetEntity> _selectedAssets = [];
  bool _isLoading = true;
  bool _hasPermission = false;
  bool _isSending = false;

  @override
  void initState() {
    super.initState();
    _fetchAssets();
  }

  Future<void> _fetchAssets() async {
    final PermissionState ps = await PhotoManager.requestPermissionExtend();
    if (!ps.isAuth) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _hasPermission = false;
        });
      }
      return;
    }

    final List<AssetPathEntity> paths = await PhotoManager.getAssetPathList(
      type: RequestType.image,
      hasAll: true,
      onlyAll: true,
    );

    if (paths.isEmpty) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _hasPermission = true;
        });
      }
      return;
    }

    final AssetPathEntity path = paths.first;

    // Fetch up to 60 recent images
    final List<AssetEntity> assets = await path.getAssetListPaged(
      page: 0,
      size: 60,
    );

    if (mounted) {
      setState(() {
        _assets = assets;
        _isLoading = false;
        _hasPermission = true;
      });
    }
  }

  void _toggleSelection(AssetEntity asset) {
    setState(() {
      if (_selectedAssets.contains(asset)) {
        _selectedAssets.remove(asset);
      } else {
        if (_selectedAssets.length >= 10) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(context.l10n.chatMaxImageLimit)),
          );
          return;
        }
        _selectedAssets.add(asset);
      }
    });
  }

  Future<void> _sendSelected() async {
    if (_selectedAssets.isEmpty) return;
    
    setState(() => _isSending = true);
    
    final List<File> files = [];
    for (final asset in _selectedAssets) {
      final file = await asset.file;
      if (file != null) files.add(file);
    }
    
    if (mounted) {
      setState(() {
        _isSending = false;
        _selectedAssets.clear();
      });
      widget.onImagesSelected(files);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (!_hasPermission) {
      return Center(
        child: AppText.b1(
          context.l10n.chatMediaPermissionRequired,
          color: AppColors.grayMedium,
        ),
      );
    }

    if (_assets.isEmpty) {
      return Center(
        child: AppText.b1(
          context.l10n.chatMediaNoImages,
          color: AppColors.grayMedium,
        ),
      );
    }

    return Stack(
      children: [
        GridView.builder(
          padding: EdgeInsets.all(2.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 2.w,
            crossAxisSpacing: 2.w,
          ),
          itemCount: _assets.length,
          itemBuilder: (context, index) {
            final asset = _assets[index];
            final isSelected = _selectedAssets.contains(asset);
            
            return GestureDetector(
              onTap: () => _toggleSelection(asset),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  AssetEntityImage(
                    asset,
                    isOriginal: false,
                    thumbnailSize: const ThumbnailSize.square(200),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: AppColors.grayLight,
                      child: const Icon(Icons.error_outline),
                    ),
                  ),
                  if (isSelected)
                    Positioned.fill(
                      child: Container(
                        color: Colors.black45,
                        child: const Center(
                          child: Icon(Icons.check_circle, color: Colors.white, size: 32),
                        ),
                      ),
                    ),
                  Positioned.fill(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => _toggleSelection(asset),
                        splashColor: AppColors.primary.withValues(alpha: 0.3),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        if (_selectedAssets.isNotEmpty)
          Positioned(
            bottom: 16.h,
            right: 16.w,
            child: FloatingActionButton(
              onPressed: _isSending ? null : _sendSelected,
              backgroundColor: AppColors.primary,
              child: _isSending 
                  ? const SizedBox(
                      width: 24, 
                      height: 24, 
                      child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2)
                    ) 
                  : const Icon(Icons.send, color: Colors.white),
            ),
          ),
      ],
    );
  }
}
