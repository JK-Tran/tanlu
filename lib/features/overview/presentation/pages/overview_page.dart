import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/overview/presentation/bloc/overview_bloc.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_action_card.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_banner.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_request_cards.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_attendance_card.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_progress_card.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends BasePageState<OverviewPage, OverviewBloc> {
  @override
  void initState() {
    super.initState();
    final currentUser = context.read<AppBloc>().currentUser;
    bloc.add(StartOverviewEvent(classId: currentUser?.classId));
  }

  Future<void> _onRefresh() async {
    bloc.add(const RefreshOverviewAttendanceEvent());
    await Future.delayed(const Duration(milliseconds: 400));
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: RefreshIndicator(
              color: AppColors.primary,
              onRefresh: _onRefresh,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            const OverviewBanner(),
                            SizedBox(height: 32.h),
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
                    const OverviewAttendanceCard(),
                    SizedBox(height: 16.h),
                    OverviewProgressCard(
                      title: 'Đánh giá tháng 5/2026',
                      iconPath: 'assets/images/overview/img-feedback.png',
                      primaryColor: AppColors.warning,
                      iconBgColor: AppColors.warningLight,
                      avatars: const [],
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
                      avatars: const [],
                      currentValue: 7,
                      totalValue: 11,
                      statusText: 'bé đã cân đo',
                      remainingText: 'Còn 4 bé chưa cân đo',
                      imageScale: 1.8,
                      onTap: () {},
                    ),
                    SizedBox(height: 80.h),
                  ],
                ),
              ),
            ),
          ),
          //  const OverviewLeaveTestFab(),
        ],
      ),
    );
  }
}
