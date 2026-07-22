import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/app_search_bar.dart';
import 'package:tanlu_management/features/notification/presentation/widgets/notification_bell_widget.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class StudentHeader extends StatefulWidget {
  final ValueChanged<String>? onSearchChanged;

  const StudentHeader({super.key, this.onSearchChanged});

  @override
  State<StudentHeader> createState() => _StudentHeaderState();
}

class _StudentHeaderState extends State<StudentHeader> {
  bool isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        child: isSearching ? _buildSearchBar() : _buildTitleBar(),
      ),
    );
  }

  Widget _buildTitleBar() {
    return Row(
      key: const ValueKey('title_bar'),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText.h1(
          "Danh sách trẻ",
          fontWeight: FontWeight.w800,
          color: AppColors.grayDark,
          fontSize: 20.sp,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.08),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Material(
                color: Colors.white,
                shape: CircleBorder(
                  side: BorderSide(color: AppColors.primaryLight, width: 1),
                ),
                clipBehavior: Clip
                    .antiAlias, // Cắt viền gọn gàng để hiệu ứng nhấn không bị tràn
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isSearching = true;
                    });
                    Future.delayed(const Duration(milliseconds: 50), () {
                      _searchFocusNode.requestFocus();
                    });
                  },
                  splashColor: AppColors.primaryLight, // Màu gợn sóng khi nhấn
                  highlightColor: AppColors.primary.withValues(alpha: 0.5),
                  child: Icon(
                    Icons.search_rounded,
                    color: AppColors.grayDark,
                    size: 20.w,
                  ),
                ),
              ),
            ),

            SizedBox(width: 12.w),

            const NotificationBellWidget(
              size: 40,
              iconSize: 24,
              backgroundColor: Colors.white,
              hasShadow: true,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    final bool hasText = _searchController.text.isNotEmpty;

    return Row(
      key: const ValueKey('search_bar'),
      children: [
        Expanded(
          child: AppSearchBar(
            controller: _searchController,
            focusNode: _searchFocusNode,
            hintText: context.l10n.searchStudentHint,
            backgroundColor: hasText ? AppColors.grayVeryLight : Colors.white,
            borderColor: hasText
                ? Colors.transparent
                : AppColors.primary.withValues(alpha: 0.5),
            boxShadow: hasText ? [] : null,
            onChanged: (value) {
              setState(() {});
              if (widget.onSearchChanged != null) {
                widget.onSearchChanged!(value);
              }
            },
            suffixIcon: hasText
                ? GestureDetector(
                    onTap: () {
                      _searchController.clear();
                      setState(() {});
                      if (widget.onSearchChanged != null) {
                        widget.onSearchChanged!('');
                      }
                    },
                    child: Icon(
                      Icons.cancel,
                      color: AppColors.grayMedium,
                      size: 20.w,
                    ),
                  )
                : null,
          ),
        ),
        SizedBox(width: 12.w),
        GestureDetector(
          onTap: () {
            setState(() {
              isSearching = false;
              _searchController.clear();
            });
            _searchFocusNode.unfocus();
            if (widget.onSearchChanged != null) {
              widget.onSearchChanged!('');
            }
          },
          child: AppText.t1(
            "Hủy",
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
