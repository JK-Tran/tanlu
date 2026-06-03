import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/widgets/custom_card.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_contact_row.dart';

class StudentFamilyTab extends StatelessWidget {
  const StudentFamilyTab({super.key, required this.student});

  final Student student;

  @override
  Widget build(BuildContext context) {
    if (student.studentParents.isEmpty) {
      return _buildEmptyState('Chưa có thông tin phụ huynh');
    }

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        children: [
          CustomCard(
            title: 'Thành viên gia đình',
            icon: Icons.family_restroom_rounded,
            children: student.studentParents.map((sp) {
              final p = sp.parent;
              String rel = sp.relationship;
              if (rel == 'father') rel = 'Ba';
              if (rel == 'mother') rel = 'Mẹ';
              final name = p.user.fullName;
              final initials = name.isNotEmpty
                  ? name.split(' ').last[0].toUpperCase()
                  : '?';

              return Padding(
                padding: EdgeInsets.only(
                  bottom: sp != student.studentParents.last ? 16 : 0,
                ),
                child: Column(
                  children: [
                    StudentContactRow(
                      initials: initials,
                      name: '$name ($rel)',
                      phone: p.user.phone,
                      isPrimary: sp.isPrimaryContact,
                      avatarBg: const Color(0xFFFFE8F4),
                      avatarText: const Color(0xFFE91E8C),
                    ),
                    if (sp != student.studentParents.last)
                      Padding(
                        padding: EdgeInsets.only(top: 16.h),
                        child: Divider(
                          height: 1.h,
                          color: Colors.grey.withValues(alpha: 0.15),
                        ),
                      ),
                  ],
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }

  Widget _buildEmptyState(String message) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 60.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(24.w),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.02),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(
                Icons.hourglass_empty_rounded,
                size: 40,
                color: Color(0xFFD1D1D6),
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              message,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF8E8E93),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
