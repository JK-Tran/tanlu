import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/base/default_bloc.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_action_card.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_banner.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_request_cards.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_progress_card.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends BasePageState<OverviewPage, DefaultBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      const OverviewBanner(),
                      SizedBox(
                        height: 32.h,
                      ), // Tạo khoảng trống để chứa phần thẻ chòi ra
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 16.w,
                    right: 16.w,
                    child: const OverviewActionCard(),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              const OverviewRequestCards(),
              SizedBox(height: 16.h),
              OverviewProgressCard(
                title: 'Điểm danh hôm nay',
                iconPath: 'assets/images/overview/img-attendance.png',
                primaryColor: AppColors.successDark,
                iconBgColor: AppColors.successLight,
                avatarColors: const [
                  AppColors.info,
                  AppColors.accent,
                  AppColors.warning,
                ],
                extraCount: 1, // To show +1 badge for attendance like the image
                currentValue: 10,
                totalValue: 14,
                statusText: 'bé đã điểm danh',
                remainingText: 'Còn 4 bé chưa điểm danh',
                onTap: () {},
                imageScale: 1.2,
              ),
              SizedBox(height: 16.h),
              OverviewProgressCard(
                title: 'Đánh giá tháng 5/2026',
                iconPath: 'assets/images/overview/img-feedback.png',
                primaryColor: AppColors.warning,
                iconBgColor: AppColors.warningLight,
                avatarColors: const [
                  AppColors.info,
                  AppColors.accent,
                  AppColors.warning,
                ],
                extraCount: null, // No extra count badge for feedback, just avatars
                currentValue: 12,
                totalValue: 14,
                statusText: 'bé đã đánh giá',
                remainingText: 'Đã đánh giá 12 bé',
                imageScale: 2,
                onTap: () {},
              ),
              SizedBox(height: 16.h),
              OverviewProgressCard(
                title: 'Đợt cân đo tháng 5/2026',
                iconPath: 'assets/images/overview/img-weight.png',
                primaryColor: AppColors.info,
                iconBgColor: AppColors.infoLight,
                avatarColors: const [
                  AppColors.info,
                  AppColors.accent,
                  AppColors.warning,
                  AppColors.successDark,
                ],
                extraCount: 4, // Shows +4 badge for weight
                currentValue: 7,
                totalValue: 11,
                statusText: 'bé đã cân đo',
                remainingText: 'Còn 4 bé chưa cân đo',
                imageScale: 1.8,
                onTap: () {},
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
