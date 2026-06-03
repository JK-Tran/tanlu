import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class ReportMonthPicker extends StatelessWidget {
  const ReportMonthPicker({
    super.key,
    required this.selectedMonth,
    required this.onMonthChanged,
  });

  final String selectedMonth;
  final ValueChanged<String> onMonthChanged;

  String _formatLabel(String month) {
    final parts = month.split('-');
    if (parts.length < 2) return month;
    return 'Tháng ${int.parse(parts[1])}/${parts[0]}';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showPicker(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 7.h),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.18),
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.calendar_month_rounded,
              size: 15,
              color: Colors.white,
            ),
            SizedBox(width: 6.w),
            AppText.b2(
              _formatLabel(selectedMonth),
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            Icon(
              Icons.expand_more_rounded,
              size: 16,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void _showPicker(BuildContext context) {
    // Parse selectedMonth to DateTime
    final parts = selectedMonth.split('-');
    DateTime initialDate = DateTime.now();
    if (parts.length == 2) {
      final year = int.tryParse(parts[0]);
      final month = int.tryParse(parts[1]);
      if (year != null && month != null) {
        initialDate = DateTime(year, month);
      }
    }

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => _MonthPickerSheet(
        initialDate: initialDate,
        onSelected: (date) {
          final monthStr =
              '${date.year}-${date.month.toString().padLeft(2, '0')}';
          onMonthChanged(monthStr);
        },
      ),
    );
  }
}

class _MonthPickerSheet extends StatefulWidget {
  const _MonthPickerSheet({
    required this.initialDate,
    required this.onSelected,
  });

  final DateTime initialDate;
  final ValueChanged<DateTime> onSelected;

  @override
  State<_MonthPickerSheet> createState() => _MonthPickerSheetState();
}

class _MonthPickerSheetState extends State<_MonthPickerSheet> {
  late int _selectedMonth;
  late int _selectedYear;
  final int _minYear = 2010;
  final int _maxYear = 2035;

  @override
  void initState() {
    super.initState();
    _selectedMonth = widget.initialDate.month;
    _selectedYear = widget.initialDate.year;

    // Ensure selected year is within bounds
    if (_selectedYear < _minYear) _selectedYear = _minYear;
    if (_selectedYear > _maxYear) _selectedYear = _maxYear;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      padding: EdgeInsets.only(top: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Center(
            child: Container(
              width: 36.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.grayLight,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText.t1(
                  'Chọn tháng báo cáo',
                  fontWeight: FontWeight.w700,
                  color: AppColors.grayDark,
                  fontSize: 16.sp,
                ),
                TextButton(
                  onPressed: () {
                    final date = DateTime(_selectedYear, _selectedMonth);
                    widget.onSelected(date);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Xong',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250.h,
            child: Row(
              children: [
                // Cột Tháng
                Expanded(
                  child: CupertinoPicker(
                    scrollController: FixedExtentScrollController(
                      initialItem: _selectedMonth - 1,
                    ),
                    itemExtent: 40,
                    onSelectedItemChanged: (index) {
                      setState(() {
                        _selectedMonth = index + 1;
                      });
                    },
                    children: List.generate(12, (index) {
                      return Center(
                        child: Text(
                          'Tháng ${index + 1}',
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: AppColors.grayDark,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                // Cột Năm
                Expanded(
                  child: CupertinoPicker(
                    scrollController: FixedExtentScrollController(
                      initialItem: _selectedYear - _minYear,
                    ),
                    itemExtent: 40,
                    onSelectedItemChanged: (index) {
                      setState(() {
                        _selectedYear = _minYear + index;
                      });
                    },
                    children: List.generate(_maxYear - _minYear + 1, (index) {
                      return Center(
                        child: Text(
                          '${_minYear + index}',
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: AppColors.grayDark,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
        ],
      ),
    );
  }
}
