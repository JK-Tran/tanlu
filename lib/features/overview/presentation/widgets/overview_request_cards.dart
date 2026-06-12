import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class OverviewRequestCards extends StatelessWidget {
  const OverviewRequestCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: _buildLeaveRequestCard()),
            SizedBox(width: 12.w),
            Expanded(child: _buildParentRequestCard()),
          ],
        ),
      ),
    );
  }

  Widget _buildUnifiedCard({
    required Color primaryColor,
    required Color lightBgColor,
    required String iconPath,
    required int count,
    required String title,
    required String subtitle,
    required Widget contentArea,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8.w, 12.h, 8.w, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 32.w,
                      height: 32.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Transform.scale(
                        scale: 3,
                        child: Image.asset(
                          iconPath,
                          width: 20.w,
                          height: 20.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.h2(
                            title,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                            maxLines: 2,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 2.h),
                          AppText.b2(
                            subtitle,
                            color: AppColors.grayDark80,
                            fontSize: 10.sp,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: DottedLine(
              dashColor: primaryColor.withValues(alpha: 0.3),
              dashLength: 4.0,
              dashGapLength: 4.0,
              lineThickness: 1.0,
            ),
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: contentArea,
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.fromLTRB(8.w, 0, 8.w, 12.h),
            child: Material(
              color: lightBgColor,
              borderRadius: BorderRadius.circular(8.r),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(8.r),
                splashColor: primaryColor.withValues(alpha: 0.2),
                highlightColor: primaryColor.withValues(alpha: 0.1),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText.b2(
                        'Xem chi tiết',
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                      ),
                      SizedBox(width: 4.w),
                      Icon(
                        Icons.chevron_right,
                        size: 16.w,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContentArea(
    int count,
    Color primaryColor, {
    String? singleName,
    String? singleSub,
  }) {
    if (count == 1) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.white,
            child: Icon(Icons.face, size: 24.w, color: Colors.blue.shade300),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText.b2(
                  singleName ?? 'Minh Anh',
                  color: const Color(0xFF1F2937),
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp,
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2.h),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontFamily: 'Inter',
                      color: const Color(0xFF6B7280),
                    ),
                    children: [
                      const TextSpan(text: 'Nghỉ: '),
                      TextSpan(
                        text: singleSub ?? 'Hôm nay',
                        style: const TextStyle(color: Color(0xFF4B5563)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.hourglass_empty_rounded,
                      size: 12.w,
                      color: primaryColor,
                    ),
                    SizedBox(width: 4.w),
                    AppText.b2(
                      'Chờ xác nhận',
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(Icons.chevron_right, size: 16.w, color: Colors.grey.shade400),
        ],
      );
    }

    // Multiple users layout
    int displayCount = count > 3 ? 3 : count;
    int extraCount = count > 3 ? count - 3 : 0;

    List<Widget> avatars = [];
    List<IconData> icons = [Icons.face, Icons.face_4, Icons.face_6];
    List<Color> colors = [
      Colors.blue.shade300,
      Colors.pink.shade300,
      Colors.green.shade300,
    ];

    for (int i = 0; i < displayCount; i++) {
      avatars.add(
        Align(
          widthFactor: (i == displayCount - 1 && extraCount == 0) ? 1.0 : 0.7,
          alignment: Alignment.centerLeft,
          child: Container(
            width: 32.r,
            height: 32.r,
            decoration: BoxDecoration(
              color: colors[i % 3].withValues(alpha: 0.1),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            alignment: Alignment.center,
            child: Icon(icons[i % 3], size: 16.w, color: colors[i % 3]),
          ),
        ),
      );
    }

    if (extraCount > 0) {
      avatars.add(
        Align(
          widthFactor: 1.0,
          alignment: Alignment.centerLeft,
          child: Container(
            width: 32.r,
            height: 32.r,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            alignment: Alignment.center,
            child: AppText.b2(
              '+$extraCount',
              color: primaryColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: avatars,
    );
  }

  Widget _buildLeaveRequestCard() {
    return _buildUnifiedCard(
      primaryColor: const Color(0xFFF94A70),
      lightBgColor: const Color(0xFFF94A70).withValues(alpha: 0.1),
      iconPath: 'assets/images/overview/img-calender.png',
      count: 3,
      title: 'Đơn xin nghỉ',
      subtitle: 'Chờ xác nhận',
      contentArea: _buildContentArea(
        3,
        const Color(0xFFF94A70),
        singleName: 'Minh Anh',
        singleSub: 'Hôm nay',
      ),
    );
  }

  Widget _buildParentRequestCard() {
    return _buildUnifiedCard(
      primaryColor: const Color(0xFFF28C28),
      lightBgColor: const Color(0xFFF28C28).withValues(alpha: 0.1),
      iconPath: 'assets/images/overview/img-chat-nontification.png',
      count: 4,
      title: 'Yêu cầu phụ huynh',
      subtitle: 'Chờ phản hồi',
      contentArea: _buildContentArea(4, const Color(0xFFF28C28)),
    );
  }
}
