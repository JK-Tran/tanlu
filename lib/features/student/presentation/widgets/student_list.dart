import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_item.dart';

class StudentList extends StatelessWidget {
  final List<Student> students;

  const StudentList({super.key, required this.students});

  @override
  Widget build(BuildContext context) {
    final groupedData = <String, List<Student>>{};

    // Giữ thứ tự từ Firestore (fullName), chỉ nhóm theo chữ cái đầu.
    for (final student in students) {
      final name = student.nickname.isNotEmpty
          ? student.nickname
          : student.fullName;
      final firstLetter = name.isNotEmpty ? name[0].toUpperCase() : '#';
      groupedData.putIfAbsent(firstLetter, () => []).add(student);
    }

    final sortedKeys = groupedData.keys.toList()..sort();

    final items = <Widget>[];
    for (final key in sortedKeys) {
      final group = groupedData[key]!;
      if (group.isEmpty) continue;

      items.add(
        Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 12.h,
            bottom: 4.h,
          ),
          child: AppText.h2(
            key,
            color: AppColors.grayMedium,
            fontWeight: FontWeight.w800,
            fontSize: 18.sp,
          ),
        ),
      );

      for (final student in group) {
        items.add(StudentItem(student: student));
      }
    }

    return SliverList(delegate: SliverChildListDelegate(items));
  }
}
