import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

/// Chọn ngày/tháng bằng scroll wheel kiểu iOS. Năm cố định theo [year].
class AppDateScrollPicker extends StatefulWidget {
  const AppDateScrollPicker({
    super.key,
    required this.initialDate,
    this.year,
    this.minDate,
    this.maxDate,
  });

  final DateTime initialDate;
  final int? year;
  final DateTime? minDate;
  final DateTime? maxDate;

  static Future<DateTime?> show(
    BuildContext context, {
    DateTime? initialDate,
    int? year,
    DateTime? minDate,
    DateTime? maxDate,
  }) {
    final now = DateTime.now();
    final pickerYear = year ?? now.year;

    return showModalBottomSheet<DateTime>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => AppDateScrollPicker(
        initialDate: initialDate ?? now,
        year: pickerYear,
        minDate: minDate ?? DateTime(pickerYear, 1, 1),
        maxDate: maxDate ?? now,
      ),
    );
  }

  @override
  State<AppDateScrollPicker> createState() => _AppDateScrollPickerState();
}

class _AppDateScrollPickerState extends State<AppDateScrollPicker> {
  static const _monthLabels = [
    'Tháng 1',
    'Tháng 2',
    'Tháng 3',
    'Tháng 4',
    'Tháng 5',
    'Tháng 6',
    'Tháng 7',
    'Tháng 8',
    'Tháng 9',
    'Tháng 10',
    'Tháng 11',
    'Tháng 12',
  ];

  late int _year;
  late int _selectedMonth;
  late int _selectedDay;
  late FixedExtentScrollController _dayController;
  late FixedExtentScrollController _monthController;

  DateTime get _maxDate => widget.maxDate ?? DateTime.now();
  DateTime get _minDate => widget.minDate ?? DateTime(_year, 1, 1);

  int get _minMonth => _minDate.year == _year ? _minDate.month.clamp(1, 12) : 1;

  int get _maxMonth =>
      _maxDate.year == _year ? _maxDate.month.clamp(1, 12) : 12;

  List<int> get _months =>
      List.generate(_maxMonth - _minMonth + 1, (i) => _minMonth + i);

  int get _daysInSelectedMonth => DateTime(_year, _selectedMonth + 1, 0).day;

  int get _minDay {
    if (_selectedMonth == _minMonth && _minDate.year == _year) {
      return _minDate.day;
    }
    return 1;
  }

  int get _maxDay {
    var max = _daysInSelectedMonth;
    if (_selectedMonth == _maxMonth && _maxDate.year == _year) {
      max = max < _maxDate.day ? max : _maxDate.day;
    }
    return max;
  }

  List<int> get _days =>
      List.generate(_maxDay - _minDay + 1, (i) => _minDay + i);

  DateTime get _selectedDate => DateTime(_year, _selectedMonth, _selectedDay);

  @override
  void initState() {
    super.initState();
    _year = widget.year ?? DateTime.now().year;
    final clamped = _clamp(widget.initialDate);
    _selectedMonth = clamped.month;
    _selectedDay = clamped.day;
    _dayController = FixedExtentScrollController(
      initialItem: _days.indexOf(_selectedDay).clamp(0, _days.length - 1),
    );
    _monthController = FixedExtentScrollController(
      initialItem: _months.indexOf(_selectedMonth).clamp(0, _months.length - 1),
    );
  }

  @override
  void dispose() {
    _dayController.dispose();
    _monthController.dispose();
    super.dispose();
  }

  DateTime _clamp(DateTime date) {
    var month = date.month.clamp(_minMonth, _maxMonth);
    final minDay = _minDayForMonth(month);
    final maxDay = _maxDayForMonth(month);
    final day = date.day.clamp(minDay, maxDay);
    return DateTime(_year, month, day);
  }

  int _minDayForMonth(int month) {
    if (month == _minMonth && _minDate.year == _year) return _minDate.day;
    return 1;
  }

  int _maxDayForMonth(int month) {
    var max = DateTime(_year, month + 1, 0).day;
    if (month == _maxMonth && _maxDate.year == _year) {
      max = max < _maxDate.day ? max : _maxDate.day;
    }
    return max;
  }

  void _onMonthChanged(int index) {
    final month = _months[index];
    final minDay = _minDayForMonth(month);
    final maxDay = _maxDayForMonth(month);
    final day = _selectedDay.clamp(minDay, maxDay);

    _dayController.dispose();
    _dayController = FixedExtentScrollController(
      initialItem: (day - minDay).clamp(0, maxDay - minDay),
    );

    setState(() {
      _selectedMonth = month;
      _selectedDay = day;
    });
  }

  void _onDayChanged(int index) {
    setState(() => _selectedDay = _days[index]);
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.paddingOf(context).bottom;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _Handle(),
          SizedBox(height: 12.h),
          AppText.b1(
            'Chọn ngày',
            color: AppColors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 220.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                IgnorePointer(
                  child: Container(
                    height: 40.h,
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: AppColors.grayVeryLight,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CupertinoPicker(
                        scrollController: _dayController,
                        itemExtent: 40.h,
                        diameterRatio: 1.2,
                        squeeze: 1.05,
                        magnification: 1.08,
                        selectionOverlay: const SizedBox.shrink(),
                        onSelectedItemChanged: _onDayChanged,
                        children: _days
                            .map(
                              (d) => Center(
                                child: AppText.b1(
                                  d.toString().padLeft(2, '0'),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CupertinoPicker(
                        scrollController: _monthController,
                        itemExtent: 40.h,
                        diameterRatio: 1.2,
                        squeeze: 1.05,
                        magnification: 1.08,
                        selectionOverlay: const SizedBox.shrink(),
                        onSelectedItemChanged: _onMonthChanged,
                        children: _months
                            .map(
                              (m) => Center(
                                child: AppText.b1(
                                  _monthLabels[m - 1],
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 4.h, 16.w, bottom + 12.h),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.fromHeight(48.h),
                      side: BorderSide(color: AppColors.grayLight),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: AppText.b2(
                      'Huỷ',
                      color: AppColors.grayDark,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context, _selectedDate),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(48.h),
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: AppText.b2(
                      'Xong',
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Handle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Container(
        width: 36.w,
        height: 4.h,
        decoration: BoxDecoration(
          color: AppColors.grayLight,
          borderRadius: BorderRadius.circular(2.r),
        ),
      ),
    );
  }
}
