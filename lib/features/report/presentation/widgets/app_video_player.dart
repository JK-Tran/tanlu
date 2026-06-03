import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/shared/utils/file_download_helper.dart';

class AppVideoPlayer extends StatefulWidget {
  const AppVideoPlayer({
    super.key,
    required this.videoUrl,
    required this.fileName,
  });

  final String videoUrl;
  final String fileName;

  @override
  State<AppVideoPlayer> createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  late VideoPlayerController _controller;
  bool _initialized = false;
  bool _showControls = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
      ..initialize()
          .then((_) {
            setState(() {
              _initialized = true;
            });
            _controller.play();
            _hideControlsDelayed();
          })
          .catchError((error) {
            setState(() {
              _errorMessage = 'Video lỗi không thể mở.';
            });
          });

    _controller.addListener(() {
      if (mounted) setState(() {});
    });
  }

  void _hideControlsDelayed() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted && _controller.value.isPlaying) {
        setState(() => _showControls = false);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  Widget _buildGlassButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Material(
          color: Colors.white.withValues(alpha: 0.15),
          child: InkWell(
            onTap: onTap,
            splashColor: Colors.white.withValues(alpha: 0.2),
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.2),
                  width: 1.w,
                ),
              ),
              child: Icon(icon, color: Colors.white, size: 22),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _errorMessage.isNotEmpty
          ? Center(
              child: Padding(
                padding: EdgeInsets.all(24.0.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.error_outline_rounded,
                      color: Colors.white54,
                      size: 64,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      _errorMessage,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32.h),
                    _buildGlassButton(
                      icon: Icons.close_rounded,
                      onTap: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
            )
          : (!_initialized
                ? Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircularProgressIndicator(
                          color: AppColors.primary,
                          strokeWidth: 3,
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          'Đang tải video...',
                          style: TextStyle(color: Colors.white70, fontSize: 14.sp),
                        ),
                      ],
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() => _showControls = !_showControls);
                      if (_showControls) _hideControlsDelayed();
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Video Player
                        AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ),

                        if (_controller.value.isBuffering)
                          const CircularProgressIndicator(
                            color: AppColors.primary,
                            strokeWidth: 3,
                          ),

                        // Top Gradient Protection for Controls
                        AnimatedOpacity(
                          opacity: _showControls ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 200),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 120.h,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.black87, Colors.transparent],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Top Custom Header
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                          top: _showControls
                              ? MediaQuery.of(context).padding.top + 16
                              : -100,
                          left: 16.w,
                          right: 16.w,
                          child: Row(
                            children: [
                              _buildGlassButton(
                                icon: Icons.close_rounded,
                                onTap: () => Navigator.of(context).pop(),
                              ),
                              SizedBox(width: 16.w),
                              Expanded(
                                child: Text(
                                  widget.fileName,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black87,
                                        blurRadius: 4,
                                      ),
                                    ],
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(width: 16.w),
                              _buildGlassButton(
                                icon: Icons.download_rounded,
                                onTap: () {
                                  FileDownloadHelper.downloadFile(
                                    context: context,
                                    url: widget.videoUrl,
                                    fileName: widget.fileName,
                                    fileType: 'video',
                                  );
                                },
                              ),
                            ],
                          ),
                        ),

                        // Center Play/Pause Button
                        if (_showControls)
                          AnimatedOpacity(
                            opacity: _showControls ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 200),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(60.r),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 10,
                                  sigmaY: 10,
                                ),
                                child: Material(
                                  color: Colors.black.withValues(alpha: 0.3),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (_controller.value.isPlaying) {
                                          _controller.pause();
                                        } else {
                                          _controller.play();
                                          _hideControlsDelayed();
                                        }
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(20.w),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white.withValues(
                                            alpha: 0.2,
                                          ),
                                          width: 1.5.w,
                                        ),
                                      ),
                                      child: Icon(
                                        _controller.value.isPlaying
                                            ? Icons.pause_rounded
                                            : Icons.play_arrow_rounded,
                                        color: Colors.white,
                                        size: 56,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                        // Bottom control bar
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOut,
                          bottom: _showControls ? 0 : -100,
                          left: 0.w,
                          right: 0.w,
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              right: 16.w,
                              top: 24.h,
                              bottom:
                                  MediaQuery.of(context).padding.bottom + 16,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.black87, Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                VideoProgressIndicator(
                                  _controller,
                                  allowScrubbing: true,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 8.h,
                                  ),
                                  colors: VideoProgressColors(
                                    playedColor: AppColors.primary,
                                    bufferedColor: Colors.white.withValues(
                                      alpha: 0.3,
                                    ),
                                    backgroundColor: Colors.white.withValues(
                                      alpha: 0.1,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${_formatDuration(_controller.value.position)} / ${_formatDuration(_controller.value.duration)}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        _controller.value.volume == 0
                                            ? Icons.volume_mute_rounded
                                            : Icons.volume_up_rounded,
                                        color: Colors.white,
                                        size: 22,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _controller.setVolume(
                                            _controller.value.volume == 0
                                                ? 1.0
                                                : 0.0,
                                          );
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
    );
  }
}
