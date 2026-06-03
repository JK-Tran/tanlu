import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class StudentContactRow extends StatelessWidget {
  const StudentContactRow({
    super.key,
    required this.initials,
    required this.name,
    required this.phone,
    required this.isPrimary,
    required this.avatarBg,
    required this.avatarText,
  });

  final String initials;
  final String name;
  final String phone;
  final bool isPrimary;
  final Color avatarBg;
  final Color avatarText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(color: avatarBg, shape: BoxShape.circle),
          alignment: Alignment.center,
          child: Text(
            initials,
            style: TextStyle(
              color: avatarText,
              fontWeight: FontWeight.w800,
              fontSize: 18.sp,
            ),
          ),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1C1C1E),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (isPrimary) ...[
                    SizedBox(width: 8.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF9F0A).withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Text(
                        'Chính',
                        style: TextStyle(
                          color: Color(0xFFFF9F0A),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                phone,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF8E8E93),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            color: const Color(0xFFF2F2F7),
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: IconButton(
            icon: Icon(
              Icons.phone_rounded,
              color: Color(0xFF1C1C1E),
              size: 20,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
