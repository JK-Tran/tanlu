import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/shared/services/firebase/push/chat_incoming_banner_service.dart';
import 'package:tanlu_management/shared/services/firebase/push/in_app_push_banner_controller.dart';
import 'package:tanlu_management/shared/services/firebase/push/in_app_push_banner_data.dart';

/// Banner trượt từ trên xuống khi nhận push trong app (foreground).
class InAppPushBannerOverlay extends StatefulWidget {
  const InAppPushBannerOverlay({super.key, required this.child});

  final Widget child;

  @override
  State<InAppPushBannerOverlay> createState() => _InAppPushBannerOverlayState();
}

class _InAppPushBannerOverlayState extends State<InAppPushBannerOverlay>
    with SingleTickerProviderStateMixin {
  static const _dismissDragThreshold = 48.0;
  static const _dismissVelocity = 400.0;

  late final InAppPushBannerController _controller;
  late final ChatIncomingBannerService _bannerService;
  late final AnimationController _animController;
  late final Animation<Offset> _slideAnimation;

  InAppPushBannerData? _current;
  double _dragOffset = 0;

  @override
  void initState() {
    super.initState();
    _controller = sl<InAppPushBannerController>();
    _bannerService = sl<ChatIncomingBannerService>();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 320),
    );
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, -1.2), end: Offset.zero).animate(
          CurvedAnimation(parent: _animController, curve: Curves.easeOutCubic),
        );

    _controller.stream.listen(_onBannerChanged);
  }

  void _onBannerChanged(InAppPushBannerData? data) {
    if (!mounted) return;

    if (data == null) {
      _animController.reverse().then((_) {
        if (mounted) {
          setState(() {
            _current = null;
            _dragOffset = 0;
          });
        }
      });
      return;
    }

    setState(() {
      _current = data;
      _dragOffset = 0;
    });
    _animController.forward(from: 0);
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dragOffset = (_dragOffset + details.delta.dy).clamp(-200.0, 0.0);
    });
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    final shouldDismiss =
        _dragOffset <= -_dismissDragThreshold ||
        details.velocity.pixelsPerSecond.dy <= -_dismissVelocity;

    if (shouldDismiss) {
      _controller.hide();
      return;
    }

    setState(() => _dragOffset = 0);
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        if (_current != null)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              bottom: false,
              child: SlideTransition(
                position: _slideAnimation,
                child: Transform.translate(
                  offset: Offset(0, _dragOffset),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 0),
                    child: GestureDetector(
                      onVerticalDragUpdate: _onVerticalDragUpdate,
                      onVerticalDragEnd: _onVerticalDragEnd,
                      onTap: () => _bannerService.onBannerTap(_current!),
                      child: _BannerCard(data: _current!),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _BannerCard extends StatelessWidget {
  const _BannerCard({required this.data});

  final InAppPushBannerData data;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shadowColor: Colors.black26,
      borderRadius: BorderRadius.circular(14.r),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        child: Row(
          children: [
            _Avatar(url: data.senderAvatarUrl),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText.b2(
                    data.title,
                    fontWeight: FontWeight.w700,
                    color: AppColors.grayDark,
                    maxLines: 1,
                  ),
                  SizedBox(height: 2.h),
                  AppText.b2(
                    data.body,
                    color: AppColors.grayMedium,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({this.url});

  final String? url;

  @override
  Widget build(BuildContext context) {
    final source = url?.trim();
    if (source == null || source.isEmpty) {
      return CircleAvatar(
        radius: 20.r,
        backgroundColor: AppColors.primary.withValues(alpha: 0.12),
        child: Icon(
          Icons.chat_bubble_outline,
          size: 20.w,
          color: AppColors.primary,
        ),
      );
    }

    if (source.startsWith('assets/')) {
      return CircleAvatar(radius: 20.r, backgroundImage: AssetImage(source));
    }

    return CircleAvatar(
      radius: 20.r,
      backgroundColor: AppColors.grayBg,
      backgroundImage: NetworkImage(source),
      onBackgroundImageError: (_, _) {},
      child: source.isEmpty
          ? Icon(Icons.person, size: 20.w, color: AppColors.grayMedium)
          : null,
    );
  }
}
