import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class StudentContactRow extends StatelessWidget {
  const StudentContactRow({
    super.key,
    required this.name,
    required this.phone,
    required this.isPrimary,
    required this.index,
  });

  final String name;
  final String phone;
  final bool isPrimary;
  final int index;

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: const Color(0xFFF1F5F9), width: 1.5.w),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F52BA).withValues(alpha: 0.04),
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 56.w,
                height: 56.h,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFE8F4),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.person_outline_rounded,
                  color: const Color(0xFFE91E8C),
                  size: 28.sp,
                ),
              ),
            ],
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF1E1E2D),
                          height: 1.3,
                        ),
                      ),
                    ),
                    if (isPrimary) ...[
                      SizedBox(width: 8.w),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF4E5),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: const Color(0xFFFF9F0A),
                              size: 12.sp,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              'Chính',
                              style: TextStyle(
                                color: const Color(0xFFFF9F0A),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),

                Row(
                  children: [
                    Text(
                      phone,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF8E8E93),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      onTap: () => _makePhoneCall(phone),
                      child: Container(
                        width: 30.w,
                        height: 30.w,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0EDFF),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.phone_rounded,
                          color: const Color(0xFF6366F1),
                          size: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
