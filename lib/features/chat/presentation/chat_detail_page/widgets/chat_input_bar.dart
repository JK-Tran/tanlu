import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';

class ChatInputBar extends StatefulWidget {
  const ChatInputBar({
    super.key,
    required this.controller,
    required this.onSend,
    this.onPickGallery,
    this.onPickCamera,
    this.isSubmitting = false,
    this.isMediaPanelOpen = false,
  });

  final TextEditingController controller;
  final VoidCallback onSend;
  final VoidCallback? onPickGallery;
  final VoidCallback? onPickCamera;
  final bool isSubmitting;
  final bool isMediaPanelOpen;

  @override
  State<ChatInputBar> createState() => _ChatInputBarState();
}

class _ChatInputBarState extends State<ChatInputBar> {
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _hasText = widget.controller.text.trim().isNotEmpty;
    widget.controller.addListener(_onTextChanged);
  }

  @override
  void didUpdateWidget(ChatInputBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_onTextChanged);
      widget.controller.addListener(_onTextChanged);
      _hasText = widget.controller.text.trim().isNotEmpty;
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    final hasText = widget.controller.text.trim().isNotEmpty;
    if (hasText == _hasText) return;
    setState(() => _hasText = hasText);
  }

  void _handleSend() {
    if (!_hasText || widget.isSubmitting) return;
    widget.onSend();
  }

  @override
  Widget build(BuildContext context) {
    final actionsEnabled = !widget.isSubmitting;

    return SafeArea(
      top: false,
      child: Container(
        padding: EdgeInsets.fromLTRB(8.w, 8.h, 12.w, 8.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border(top: BorderSide(color: AppColors.grayLight)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _MediaIconButton(
              icon: Icons.camera_alt_outlined,
              onPressed: actionsEnabled ? widget.onPickCamera : null,
            ),
            _MediaIconButton(
              icon: widget.isMediaPanelOpen
                  ? Icons.keyboard_outlined
                  : Icons.image_outlined,
              isActive: widget.isMediaPanelOpen,
              onPressed: actionsEnabled ? widget.onPickGallery : null,
            ),
            SizedBox(width: 4.w),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.grayVeryLight,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextField(
                  controller: widget.controller,
                  enabled: actionsEnabled,
                  minLines: 1,
                  maxLines: 4,
                  onTap: () {
                    if (widget.isMediaPanelOpen) {
                      widget.onPickGallery?.call();
                    }
                  },
                  style: TextStyle(fontSize: 12.sp, color: AppColors.grayDark),
                  decoration: InputDecoration(
                    hintText: 'Aa',
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.grayMedium,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 14.w,
                      vertical: 10.h,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                  textInputAction: TextInputAction.send,
                  onSubmitted: (_) => _handleSend(),
                ),
              ),
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeOut,
              alignment: Alignment.centerRight,
              child: _hasText
                  ? Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: AppIconButton(
                        icon: Icons.send_rounded,
                        iconColor: AppColors.white,
                        backgroundColor: AppColors.primary,
                        size: 36,
                        borderRadius: 18,
                        shape: BoxShape.circle,
                        onPressed: actionsEnabled ? _handleSend : null,
                      ),
                    )
                  : SizedBox(width: 0, height: 36.h),
            ),
          ],
        ),
      ),
    );
  }
}

class _MediaIconButton extends StatelessWidget {
  const _MediaIconButton({
    required this.icon,
    this.onPressed,
    this.isActive = false,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AppIconButton(
      icon: icon,
      iconColor: isActive ? AppColors.white : AppColors.primary,
      backgroundColor: isActive ? AppColors.primary : Colors.transparent,
      size: 36,
      onPressed: onPressed,
    );
  }
}
