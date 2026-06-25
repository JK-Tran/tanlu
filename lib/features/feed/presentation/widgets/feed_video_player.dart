import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/feed/presentation/services/video_cache_service.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/media_viewer_bar.dart';
import 'package:tanlu_management/shared/utils/file_download_helper.dart';
import 'package:video_player/video_player.dart';

/// Preview trong feed — tap mở fullscreen với [Chewie] (controls chuẩn).
class FeedVideoPlayer extends StatefulWidget {
  const FeedVideoPlayer({super.key, required this.url});

  final String url;

  @override
  State<FeedVideoPlayer> createState() => _FeedVideoPlayerState();
}

class _FeedVideoPlayerState extends State<FeedVideoPlayer> {
  VideoPlayerController? _controller;
  var _initialized = false;
  var _hasError = false;
  var _controllerHandedOff = false;

  @override
  void initState() {
    super.initState();
    _loadPreview();
    VideoCacheService.warmCache(widget.url);
  }

  Future<void> _loadPreview() async {
    try {
      final controller = await VideoCacheService.createController(widget.url);
      if (!mounted || _controllerHandedOff) {
        await controller.dispose();
        return;
      }
      _controller = controller;
      setState(() => _initialized = true);
    } catch (_) {
      if (!mounted) return;
      setState(() => _hasError = true);
    }
  }

  @override
  void dispose() {
    if (!_controllerHandedOff) {
      _controller?.dispose();
    }
    super.dispose();
  }

  Future<void> _openFullscreen() async {
    final controller = _controller;
    if (!_initialized || controller == null) return;

    _controllerHandedOff = true;
    _controller = null;

    await FeedVideoFullscreenPage.open(
      context,
      url: widget.url,
      existingController: controller,
    );

    if (!mounted) return;

    _controllerHandedOff = false;
    _initialized = false;
    _hasError = false;
    await _loadPreview();
  }

  @override
  Widget build(BuildContext context) {
    final controller = _controller;
    final aspectRatio = _initialized && controller != null
        ? controller.value.aspectRatio
        : 16 / 9;
    final maxHeight = 280.h;

    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: LayoutBuilder(
        builder: (context, constraints) {
          var height = constraints.maxWidth / aspectRatio;
          if (height > maxHeight) height = maxHeight;
          final width = height * aspectRatio;

          return SizedBox(
            width: constraints.maxWidth,
            height: height,
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                if (_initialized && controller != null)
                  Center(
                    child: SizedBox(
                      width: width.clamp(0, constraints.maxWidth),
                      height: height,
                      child: VideoPlayer(controller),
                    ),
                  )
                else if (_hasError)
                  ColoredBox(
                    color: AppColors.grayVeryLight,
                    child: Icon(
                      Icons.videocam_off_outlined,
                      size: 28.w,
                      color: AppColors.grayMedium,
                    ),
                  )
                else
                  const ColoredBox(color: AppColors.grayVeryLight),
                if (_initialized)
                  Positioned.fill(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: _openFullscreen,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    AppColors.black.withValues(alpha: 0.35),
                                  ],
                                ),
                              ),
                            ),
                            Icon(
                              Icons.play_circle_filled,
                              color: AppColors.white.withValues(alpha: 0.92),
                              size: 40,
                              shadows: const [
                                Shadow(color: Colors.black54, blurRadius: 6),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FeedVideoFullscreenPage extends StatefulWidget {
  const FeedVideoFullscreenPage({
    super.key,
    required this.url,
    this.existingController,
  });

  final String url;
  final VideoPlayerController? existingController;

  static Future<void> open(
    BuildContext context, {
    required String url,
    VideoPlayerController? existingController,
  }) {
    return Navigator.of(context, rootNavigator: true).push<void>(
      PageRouteBuilder<void>(
        opaque: true,
        fullscreenDialog: true,
        pageBuilder: (_, _, _) => FeedVideoFullscreenPage(
          url: url,
          existingController: existingController,
        ),
        transitionsBuilder: (_, animation, _, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  State<FeedVideoFullscreenPage> createState() =>
      _FeedVideoFullscreenPageState();
}

class _FeedVideoFullscreenPageState
    extends State<FeedVideoFullscreenPage> {
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;
  var _hasError = false;
  var _ownsController = true;
  var _isDownloading = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    _initPlayer();
  }

  Future<void> _initPlayer() async {
    final existing = widget.existingController;
    try {
      if (existing != null && existing.value.isInitialized) {
        _videoController = existing;
        _ownsController = true;
        _setupChewie(autoPlay: true);
        return;
      }

      existing?.dispose();

      final controller = await VideoCacheService.createController(widget.url);
      if (!mounted) {
        await controller.dispose();
        return;
      }

      _videoController = controller;
      _ownsController = true;
      _setupChewie(autoPlay: true);
    } catch (_) {
      if (!mounted) return;
      setState(() => _hasError = true);
    }
  }

  void _setupChewie({required bool autoPlay}) {
    final videoController = _videoController;
    if (videoController == null || !mounted) return;

    _chewieController = ChewieController(
      videoPlayerController: videoController,
      autoPlay: autoPlay,
      allowFullScreen: false,
      allowMuting: true,
      allowPlaybackSpeedChanging: false,
      showControls: true,
      aspectRatio: videoController.value.aspectRatio,
      materialSeekButtonSize: 26,
      progressIndicatorDelay: null,
      placeholder: const ColoredBox(color: AppColors.black),
      materialProgressColors: ChewieProgressColors(
        playedColor: AppColors.primary,
        handleColor: AppColors.primary,
        bufferedColor: AppColors.white.withValues(alpha: 0.35),
        backgroundColor: AppColors.white.withValues(alpha: 0.2),
      ),
    );

    setState(() {});
  }

  @override
  void dispose() {
    _chewieController?.dispose();
    if (_ownsController) {
      _videoController?.dispose();
    }
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    super.dispose();
  }

  void _close() => Navigator.of(context, rootNavigator: true).pop();

  Future<void> _downloadVideo() async {
    if (_isDownloading) return;

    setState(() => _isDownloading = true);
    try {
      await FileDownloadHelper.saveVideoToGallery(
        context: context,
        url: widget.url,
      );
    } finally {
      if (mounted) setState(() => _isDownloading = false);
    }
  }

  Widget _buildVideoPlayer() {
    final chewie = _chewieController;
    final videoController = _videoController;
    if (chewie == null || videoController == null) {
      return const SizedBox.shrink();
    }

    final aspectRatio = videoController.value.aspectRatio;

    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;
        var height = width / aspectRatio;
        if (height > constraints.maxHeight) {
          height = constraints.maxHeight;
          width = height * aspectRatio;
        }

        return Center(
          child: SizedBox(
            width: width,
            height: height,
            child: Chewie(controller: chewie),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: MediaViewerBar(
              onClose: _close,
              onDownload: _downloadVideo,
              isDownloading: _isDownloading,
            ),
          ),
          Expanded(
            child: _hasError
                ? Center(
                    child: AppText.b1(
                      'Không thể phát video',
                      fontSize: 12.sp,
                      color: AppColors.white,
                    ),
                  )
                : _chewieController != null
                ? _buildVideoPlayer()
                : const Center(
                    child: CircularProgressIndicator(color: AppColors.white),
                  ),
          ),
        ],
      ),
    );
  }
}

class FeedVideoList extends StatelessWidget {
  const FeedVideoList({super.key, required this.videos});

  final List<String> videos;

  @override
  Widget build(BuildContext context) {
    if (videos.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < videos.length; i++) ...[
          if (i > 0) SizedBox(height: 8.h),
          FeedVideoPlayer(url: videos[i]),
        ],
      ],
    );
  }
}
