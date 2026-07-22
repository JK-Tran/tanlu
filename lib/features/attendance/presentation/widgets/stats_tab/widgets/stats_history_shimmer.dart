import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';

class StatsHistoryShimmer extends StatelessWidget {
  const StatsHistoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 0),
          child: Shimmer.fromColors(
            baseColor: AppColors.grayLight,
            highlightColor: AppColors.white,
            child: Container(
              height: 118.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
        ),
        ShimmerList(
          itemCount: 6,
          itemHeight: 64.h,
          padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 0),
        ),
      ],
    );
  }
}
