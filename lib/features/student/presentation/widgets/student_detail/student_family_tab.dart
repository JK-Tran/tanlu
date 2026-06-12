import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_contact_row.dart';

class StudentFamilyTab extends StatefulWidget {
  const StudentFamilyTab({super.key, required this.student});

  final Student student;

  @override
  State<StudentFamilyTab> createState() => _StudentFamilyTabState();
}

class _StudentFamilyTabState extends State<StudentFamilyTab>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _controller = ScrollController();

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final student = widget.student;
    if (student.studentParents.isEmpty) {
      return _buildEmptyState('Chưa có thông tin phụ huynh');
    }

    return SingleChildScrollView(
      controller: _controller,
      key: const PageStorageKey<String>('student_family_tab'),
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        children: [
          // Header Title
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 12.h),
            child: Row(
              children: [
                Container(
                  width: 52.w,
                  height: 52.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0EDFF),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.family_restroom_rounded,
                    color: const Color(0xFF6366F1),
                    size: 28.sp,
                  ),
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Thành viên gia đình',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF1E1E2D),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Danh sách các thành viên trong gia đình',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF8E8E93),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Family Members List
          ...student.studentParents.asMap().entries.map((entry) {
            final int index = entry.key;
            final sp = entry.value;
            final p = sp.parent;
            String rel = sp.relationship;
            if (rel == 'father') rel = 'Bố';
            if (rel == 'mother') rel = 'Mẹ';
            final name = p.user.fullName;

            return Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: StudentContactRow(
                index: index + 1,
                name: '$name ($rel)',
                phone: p.user.phone,
                isPrimary: sp.isPrimaryContact,
              ),
            );
          }),
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
                fontSize: 13.sp,
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
