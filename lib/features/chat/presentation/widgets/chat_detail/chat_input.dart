import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_detail/inline_photo_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ChatInput extends StatefulWidget {
  final int conversationId;
  final ChatBloc chatBloc;

  const ChatInput({
    super.key,
    required this.conversationId,
    required this.chatBloc,
  });

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput>
    with SingleTickerProviderStateMixin {
  final _controller = TextEditingController();
  bool _showAttachments = false;
  bool _showInlinePicker = false;

  void _toggleInlinePicker() {
    setState(() {
      _showInlinePicker = !_showInlinePicker;
    });
  }

  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  late final AnimationController _menuAnimController;
  late final Animation<double> _menuAnimation;

  @override
  void initState() {
    super.initState();
    _menuAnimController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _menuAnimation = CurvedAnimation(
      parent: _menuAnimController,
      curve: Curves.easeOutBack,
      reverseCurve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    _closeMenu(immediate: true);
    _menuAnimController.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _send() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    widget.chatBloc.add(
      SendChatMessage(conversationId: widget.conversationId, text: text),
    );

    _controller.clear();
  }

  Future<void> _pickImage() async {
    // Xin quyền truy cập ảnh (iOS bắt buộc, Android thường tự xử lý qua system picker)
    if (Platform.isIOS) {
      await Permission.photos.request();
    }

    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      widget.chatBloc.add(
        SendChatMessage(
          conversationId: widget.conversationId,
          text: '',
          file: image.path,
        ),
      );
    }
  }

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.pickFiles();

    if (result != null && result.files.single.path != null) {
      widget.chatBloc.add(
        SendChatMessage(
          conversationId: widget.conversationId,
          text: '',
          file: result.files.single.path!,
        ),
      );
    }
  }

  void _toggleMenu() {
    if (_showAttachments) {
      _closeMenu();
    } else {
      _openMenu();
    }
  }

  void _openMenu() {
    setState(() {
      _showAttachments = true;
    });
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
    _menuAnimController.forward(from: 0.0);
  }

  Future<void> _closeMenu({bool immediate = false}) async {
    if (!_showAttachments && !immediate) return;
    if (mounted && !immediate) {
      setState(() {
        _showAttachments = false;
      });
      await _menuAnimController.reverse();
    }
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: () => _closeMenu(),
              behavior: HitTestBehavior.opaque,
              child: Container(color: Colors.transparent),
            ),
          ),
          CompositedTransformFollower(
            link: _layerLink,
            targetAnchor: Alignment.topLeft,
            followerAnchor: Alignment.bottomLeft,
            offset: const Offset(0, -12),
            child: Material(
              color: Colors.transparent,
              child: ScaleTransition(
                scale: _menuAnimation,
                alignment: Alignment.bottomCenter,
                child: FadeTransition(
                  opacity: _menuAnimation,
                  child: _buildBubbleMenu(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBubbleMenu() {
    return Stack(
      alignment: Alignment.bottomLeft,
      clipBehavior: Clip.none,
      children: [
        // Tail
        Positioned(
          bottom: -6,
          left: 8.w,
          child: Transform.rotate(
            angle: 3.14159 / 4,
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Bubble Content
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildMenuOption(
                icon: Icons.image_outlined,
                color: AppColors.primary, // Purple
                label: 'Ảnh',
                onTap: () {
                  _closeMenu();
                  _toggleInlinePicker();
                },
              ),
              SizedBox(width: 16.w),
              _buildMenuOption(
                icon: Icons.attach_file_rounded,
                color: const Color(0xFF3B82F6), // Blue
                label: 'Tệp',
                onTap: () {
                  _closeMenu();
                  _pickFile();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMenuOption({
    required IconData icon,
    required Color color,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 36.w,
            height: 36.w,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 18.w),
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            style: AppText.styleOf(context, StyleEnum.b2)?.copyWith(
              color: AppColors.grayDark,
              fontWeight: FontWeight.w500,
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: _showInlinePicker ? 12.h : 12.h + MediaQuery.of(context).padding.bottom,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(30.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.08),
                blurRadius: 15,
                offset: const Offset(0, 5),
              ),
            ],
          ),
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CompositedTransformTarget(
            link: _layerLink,
            child: GestureDetector(
              onTap: _toggleMenu,
              behavior: HitTestBehavior.opaque,
              child: Container(
                width: 30.w,
                height: 30.w,
                margin: EdgeInsets.symmetric(vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: AnimatedRotation(
                  turns: _showAttachments ? 0.125 : 0, // Rotates 45 degrees
                  duration: const Duration(milliseconds: 200),
                  child: Icon(Icons.add, color: AppColors.primary, size: 18.w),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: TextField(
              controller: _controller,
              textAlignVertical: TextAlignVertical.center,
              style: AppText.styleOf(
                context,
                StyleEnum.b1,
              )?.copyWith(color: AppColors.grayDark),
              maxLines: 5,
              minLines: 1,
              decoration: InputDecoration(
                hintText: 'Nhập tin nhắn...',
                hintStyle: AppText.styleOf(
                  context,
                  StyleEnum.b1,
                )?.copyWith(color: AppColors.grayMedium),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.symmetric(vertical: 8.h),
              ),
            ),
          ),
          SizedBox(width: 4.w),
          ValueListenableBuilder<TextEditingValue>(
            valueListenable: _controller,
            builder: (context, value, child) {
              final hasText = value.text.trim().isNotEmpty;
              return GestureDetector(
                onTap: hasText ? _send : null,
                behavior: HitTestBehavior.opaque,
                child: Container(
                  width: 28.w,
                  height: 28.w,
                  margin: EdgeInsets.symmetric(vertical: 6.h),
                  decoration: BoxDecoration(
                    color: hasText ? AppColors.primary : AppColors.grayLight,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.send_rounded,
                    color: hasText ? AppColors.white : AppColors.grayMedium,
                    size: 14.w,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          height: _showInlinePicker ? 300.h + MediaQuery.of(context).padding.bottom : 0,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: 300.h + MediaQuery.of(context).padding.bottom,
              child: _showInlinePicker
                  ? InlinePhotoPicker(
                      onImagesSelected: (paths) {
                        for (var path in paths) {
                          widget.chatBloc.add(
                            SendChatMessage(
                              conversationId: widget.conversationId,
                              text: '',
                              file: path,
                            ),
                          );
                        }
                        _toggleInlinePicker();
                      },
                      onOpenGallery: () {
                        _toggleInlinePicker();
                        _pickImage();
                      },
                    )
                  : const SizedBox(),
            ),
          ),
        ),
      ],
    );
  }
}
