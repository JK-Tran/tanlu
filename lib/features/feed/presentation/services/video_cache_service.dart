import 'dart:async';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:video_player/video_player.dart';

/// Tải/cache video feed — phát từ file local giúp tua nhanh, ít delay.
abstract final class VideoCacheService {
  static final CacheManager _cache = CacheManager(
    Config(
      'feed_videos',
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 40,
    ),
  );

  static final VideoPlayerOptions _playerOptions = VideoPlayerOptions(
    mixWithOthers: true,
    allowBackgroundPlayback: false,
  );

  /// Tải ngầm để lần mở fullscreen / tua sau mượt hơn.
  static void warmCache(String url) {
    unawaited(_downloadQuietly(url));
  }

  static Future<void> _downloadQuietly(String url) async {
    try {
      await _cache.downloadFile(url);
    } catch (_) {}
  }

  /// Ưu tiên file cache → nếu chưa có thì stream mạng và cache song song.
  static Future<VideoPlayerController> createController(String url) async {
    try {
      final file = await _cache.getSingleFile(url);
      final controller = VideoPlayerController.file(
        file,
        videoPlayerOptions: _playerOptions,
      );
      await controller.initialize();
      return controller;
    } catch (_) {
      final controller = VideoPlayerController.networkUrl(
        Uri.parse(url),
        videoPlayerOptions: _playerOptions,
      );
      await controller.initialize();
      warmCache(url);
      return controller;
    }
  }
}
