enum AttendanceStatus {
  present,
  late,
  absentUnexcused,
  absentExcused,
  notMarked,
}

extension AttendanceStatusMapper on AttendanceStatus {
  String get apiValue {
    switch (this) {
      case AttendanceStatus.present:
        return 'present';
      case AttendanceStatus.late:
        return 'late';
      case AttendanceStatus.absentUnexcused:
        return 'absent_unexcused';
      case AttendanceStatus.absentExcused:
        return 'absent_excused';
      case AttendanceStatus.notMarked:
        return 'not_marked';
    }
  }

  static AttendanceStatus fromApi(String value, {bool isExcused = false}) {
    // Server normalizes "absent_excused" → status:"absent" + isExcused:true
    if (value == 'absent') {
      return isExcused
          ? AttendanceStatus.absentExcused
          : AttendanceStatus.absentUnexcused;
    }
    return AttendanceStatus.values.firstWhere(
      (e) => e.apiValue == value,
      orElse: () => AttendanceStatus.notMarked,
    );
  }
}
