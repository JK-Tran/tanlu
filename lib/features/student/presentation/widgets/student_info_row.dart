import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class StudentInfoRow extends StatelessWidget {
  const StudentInfoRow({
    super.key,
    required this.label,
    required this.value,
    this.isMultiLine = false,
    this.valueColor,
  });

  final String label;
  final String value;
  final bool isMultiLine;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        crossAxisAlignment: isMultiLine
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyle(
                color: Color(0xFF8E8E93),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            flex: 3,
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: valueColor ?? const Color(0xFF1C1C1E),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 1.4.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
