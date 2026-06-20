/// Tab trên màn [AttendancePage].
enum AttendanceTab {
  list,
  leave,
  statistics;

  static AttendanceTab fromQuery(String? value) {
    return switch (value) {
      'leave' => AttendanceTab.leave,
      'statistics' || 'stats' => AttendanceTab.statistics,
      _ => AttendanceTab.list,
    };
  }
}
