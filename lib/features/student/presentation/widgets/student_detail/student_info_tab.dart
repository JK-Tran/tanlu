import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

class StudentInfoTab extends StatefulWidget {
  const StudentInfoTab({super.key, required this.student, required this.group});

  final Student student;
  final String group;

  @override
  State<StudentInfoTab> createState() => _StudentInfoTabState();
}

class _StudentInfoTabState extends State<StudentInfoTab>
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
    final bool isMale = student.gender.toLowerCase() == 'male';
    final String gender = isMale ? 'Nam' : 'Nữ';
    final String dob = student.dateOfBirth != null
        ? DateFormat('dd/MM/yyyy').format(student.dateOfBirth!)
        : 'Chưa cập nhật';
    final String enrollmentDate = student.enrollmentDate != null
        ? DateFormat('dd/MM/yyyy').format(student.enrollmentDate!)
        : 'Chưa cập nhật';

    return SingleChildScrollView(
      controller: _controller,
      key: const PageStorageKey<String>('student_info_tab'),
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section: Thông tin cá nhân
          _buildSectionCard(
            title: 'Thông tin cá nhân',
            child: Column(
              children: [
                _buildInfoRow(
                  Icons.cake_outlined,
                  'Biệt danh',
                  student.nickname,
                ),
                _buildInfoRow(
                  Icons.badge_outlined,
                  'Mã học sinh',
                  student.studentCode.isNotEmpty
                      ? student.studentCode
                      : 'Chưa cập nhật',
                ),
                _buildInfoRow(Icons.cake_outlined, 'Ngày sinh', dob),
                _buildInfoRow(
                  isMale ? Icons.male_rounded : Icons.female_rounded,
                  'Giới tính',
                  gender,
                ),
                _buildInfoRow(
                  Icons.calendar_month_outlined,
                  'Ngày tham gia',
                  enrollmentDate,
                  isLast: true,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),

          // Section: Thông tin chuyên môn
          _buildSectionCard(
            title: 'Thông tin chuyên môn',
            child: Column(
              children: [
                _buildInfoRowWithTag(
                  Icons.health_and_safety_outlined,
                  'Mức độ hỗ trợ',
                  student.supportLevel.isNotEmpty
                      ? student.supportLevel
                      : 'Chưa cập nhật',
                  const Color(0xFFFF9F0A),
                ),
                _buildInfoRow(
                  Icons.psychology_outlined,
                  'Tuổi phát triển',
                  student.developmentAgeMonth > 0
                      ? '${student.developmentAgeMonth} tháng'
                      : 'Chưa cập nhật',
                ),
                _buildInfoRow(
                  Icons.assignment_ind_outlined,
                  'Lý do can thiệp',
                  student.initialReason.isNotEmpty
                      ? student.initialReason
                      : 'Chưa cập nhật',
                  isMultiLine: true,
                ),
                _buildInfoRow(
                  Icons.medical_information_outlined,
                  'Chẩn đoán',
                  student.diagnosisSummary.isNotEmpty
                      ? student.diagnosisSummary
                      : 'Chưa cập nhật',
                  isMultiLine: true,
                  isLast: true,
                ),
              ],
            ),
          ),

          if (student.note.isNotEmpty) ...[
            SizedBox(height: 20.h),
            // Section: Ghi chú
            _buildSectionCard(
              title: 'Ghi chú',
              child: Text(
                student.note,
                style: TextStyle(
                  color: Color(0xFF1E1E2D),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.5.h,
                ),
              ),
            ),
          ],

          SizedBox(height: 24.h),
        ],
      ),
    );
  }

  Widget _buildSectionCard({required String title, required Widget child}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w800,
              color: Color(0xFF1E1E2D),
            ),
          ),
          SizedBox(height: 20.h),
          child,
        ],
      ),
    );
  }

  Widget _buildInfoRow(
    IconData icon,
    String label,
    String value, {
    bool isLast = false,
    bool isMultiLine = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : 16.0),
      child: Row(
        crossAxisAlignment: isMultiLine
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF8E8E93), size: 20),
          SizedBox(width: 12.w),
          Text(
            label,
            style: TextStyle(
              color: Color(0xFF8E8E93),
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF1E1E2D),
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRowWithTag(
    IconData icon,
    String label,
    String tagText,
    Color tagColor, {
    bool isLast = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : 16.0),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF8E8E93), size: 20),
          SizedBox(width: 12.w),
          Text(
            label,
            style: TextStyle(
              color: Color(0xFF8E8E93),
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: tagColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.assignment_ind_outlined,
                  color: Colors.white,
                  size: 14,
                ),
                SizedBox(width: 4.w),
                Text(
                  tagText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Removed unused _buildSkillChip
}
