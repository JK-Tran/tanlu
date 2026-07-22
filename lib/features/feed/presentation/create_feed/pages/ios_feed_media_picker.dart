import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tanlu_management/core/constants/app_media_limit.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/bloc/create_feed_bloc.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

/// iOS — grid thư viện trong app qua [wechat_assets_picker].
/// Không dùng trên Android (Google Play policy).
abstract final class IosFeedMediaPicker {
  IosFeedMediaPicker._();

  static Future<List<CreateFeedLocalMedia>?> pick(
    BuildContext context, {
    required int maxImages,
    required int maxVideos,
  }) async {
    if (maxImages <= 0 && maxVideos <= 0) return null;

    final maxAssets = maxImages + maxVideos;
    if (maxAssets <= 0) return null;

    try {
      final assets = await AssetPicker.pickAssets(
        context,
        pickerConfig: AssetPickerConfig(
          maxAssets: maxAssets,
          requestType: RequestType.common,
          themeColor: AppColors.primary,
          textDelegate: const VietnameseAssetPickerTextDelegate(),
          selectPredicate: (pickerContext, asset, isSelected) => _onSelectAsset(
            pickerContext,
            asset: asset,
            isSelected: isSelected,
            maxImages: maxImages,
            maxVideos: maxVideos,
          ),
        ),
      );

      if (assets == null || assets.isEmpty) return null;

      if (!context.mounted) return null;
      return _mapAssetsToLocalMedia(context, assets);
    } on StateError {
      if (context.mounted) {
        AppSnackbar.show(
          context,
          message:
              'Cần quyền truy cập thư viện ảnh. '
              'Vui lòng bật trong Cài đặt.',
          type: AppSnackbarType.warning,
        );
      }
      return null;
    }
  }

  static Future<bool> _onSelectAsset(
    BuildContext context, {
    required AssetEntity asset,
    required bool isSelected,
    required int maxImages,
    required int maxVideos,
  }) async {
    if (isSelected) return true;

    final selected = context
        .read<DefaultAssetPickerProvider>()
        .selectedAssets
        .whereType<AssetEntity>();

    final imageCount = selected
        .where((item) => item.type == AssetType.image)
        .length;
    final videoCount = selected
        .where((item) => item.type == AssetType.video)
        .length;

    if (asset.type == AssetType.video) {
      if (videoCount >= maxVideos) {
        _showLimitSnackBar(context, 'Chỉ chọn tối đa $maxVideos video');
        return false;
      }

      final file = await asset.file;
      final size = await file?.length() ?? 0;
      if (size > AppMediaLimit.maxVideoBytes) {
        if (context.mounted) {
          _showLimitSnackBar(
            context,
            'Video vượt ${AppMediaLimit.maxVideoMegabytes} MB',
          );
        }
        return false;
      }
    } else if (asset.type == AssetType.image && imageCount >= maxImages) {
      _showLimitSnackBar(context, 'Chỉ chọn tối đa $maxImages ảnh');
      return false;
    }

    return true;
  }

  static void _showLimitSnackBar(BuildContext context, String message) {
    if (!context.mounted) return;
    AppSnackbar.show(context, message: message, type: AppSnackbarType.info);
  }

  static Future<List<CreateFeedLocalMedia>> _mapAssetsToLocalMedia(
    BuildContext context,
    List<AssetEntity> assets,
  ) async {
    var skippedOversizedVideos = 0;
    var skippedOverLimit = 0;
    var imageCount = 0;
    var videoCount = 0;
    final items = <CreateFeedLocalMedia>[];

    for (final asset in assets) {
      final isVideo = asset.type == AssetType.video;

      if (isVideo) {
        if (videoCount >= AppMediaLimit.maxVideosPerPost) {
          skippedOverLimit++;
          continue;
        }
      } else if (imageCount >= AppMediaLimit.maxImagesPerPost) {
        skippedOverLimit++;
        continue;
      }

      final file = await asset.originFile ?? await asset.file;
      if (file == null) continue;

      final path = file.path;
      if (path.isEmpty) continue;

      if (isVideo) {
        final size = await file.length();
        if (size > AppMediaLimit.maxVideoBytes) {
          skippedOversizedVideos++;
          continue;
        }
        videoCount++;
      } else {
        imageCount++;
      }

      items.add((path: path, isVideo: isVideo));
    }

    if (context.mounted) {
      if (skippedOversizedVideos > 0) {
        AppSnackbar.show(
          context,
          message:
              'Đã bỏ qua $skippedOversizedVideos video vượt '
              '${AppMediaLimit.maxVideoMegabytes} MB',
          type: AppSnackbarType.warning,
        );
      }
      if (skippedOverLimit > 0) {
        AppSnackbar.show(
          context,
          message:
              'Chỉ chọn tối đa ${AppMediaLimit.maxImagesPerPost} ảnh và '
              '${AppMediaLimit.maxVideosPerPost} video',
          type: AppSnackbarType.info,
        );
      }
    }

    return items;
  }
}
