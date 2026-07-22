// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get absent => 'Absent';

  @override
  String get agree => 'Agree';

  @override
  String get all => 'All';

  @override
  String approveLeaveRequestConfirmMessage(String name) {
    return 'Are you sure you want to approve the leave request for $name?';
  }

  @override
  String get approveLeaveRequestConfirmTitle => 'Approve this request?';

  @override
  String get attendanceStatusFinalized => 'finalized for the day';

  @override
  String get attendanceStatusInProgress => 'attendance in progress';

  @override
  String get attendanceStatusMorning => 'morning attendance done';

  @override
  String get attendanceStatusNotYet => 'not attended yet';

  @override
  String attendanceSummary(
    int present,
    int absentExcused,
    int absentUnexcused,
  ) {
    return 'Present $present · Excused $absentExcused · Unexcused $absentUnexcused';
  }

  @override
  String get attendanceToday => 'Attendance today';

  @override
  String get attended => 'Attended';

  @override
  String get callPhone => 'Call';

  @override
  String get cancel => 'Cancel';

  @override
  String get cannotCallPhone => 'Cannot call on this device';

  @override
  String get cannotPlayVideo => 'Cannot play video';

  @override
  String get chooseFromGallery => 'Choose from gallery';

  @override
  String classLabel(String classId) {
    return 'Class $classId';
  }

  @override
  String get close => 'Close';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get comment => 'Comment';

  @override
  String get comments => 'Comments';

  @override
  String commentsCount(String count) {
    return '$count comments';
  }

  @override
  String get confirm => 'Confirm';

  @override
  String get copied => 'Copied';

  @override
  String get copyPhoneNumber => 'Copy phone number';

  @override
  String get day => 'days';

  @override
  String get diagnosis => 'Diagnosis';

  @override
  String get enterLoginEmail => 'Enter login email';

  @override
  String get enterYourPassword => 'Enter your password';

  @override
  String get excused => 'Excused';

  @override
  String get explore => 'Explore';

  @override
  String get featureComingSoon => '(Feature coming soon)';

  @override
  String femaleStats(int count) {
    return 'Female: $count';
  }

  @override
  String get forbiddenError =>
      'You do not have permission to perform this action.';

  @override
  String helloUser(String name) {
    return 'Hello,\n$name 👋';
  }

  @override
  String get hotline => 'Support hotline: 090 134 4756';

  @override
  String get hour => 'hours';

  @override
  String get imageLoadError => 'Error loading image';

  @override
  String get justNow => 'Just now';

  @override
  String get leaveRequest => 'Leave request';

  @override
  String leaveRequestPendingCount(int count) {
    return '$count pending\nrequests';
  }

  @override
  String get like => 'Like';

  @override
  String get login => 'Login';

  @override
  String get loginTitleCaps => 'LOGIN';

  @override
  String maleStats(int count) {
    return 'Male: $count';
  }

  @override
  String get minute => 'minutes';

  @override
  String get month => 'months';

  @override
  String get myClass => 'My class';

  @override
  String get navAccount => 'Account';

  @override
  String get navActivity => 'Activity';

  @override
  String get navFeed => 'Feed';

  @override
  String get navMessage => 'Messages';

  @override
  String get navOverview => 'Overview';

  @override
  String get navPersonal => 'Personal';

  @override
  String get navProgress => 'Progress';

  @override
  String get navStudent => 'Students';

  @override
  String get networkError => 'Network error. Please try again.';

  @override
  String get noAttendanceDataForDay => 'No attendance data for this day';

  @override
  String get noClassUpdated => 'Class not updated';

  @override
  String get noData => 'No data';

  @override
  String get noInternet => 'No network connection. You are offline.';

  @override
  String get noNotifications => 'No notifications';

  @override
  String get noParentInfo => 'No parent information';

  @override
  String get noPostsYet => 'No posts yet';

  @override
  String get noStudentAttendanceYet => 'No students attended yet';

  @override
  String get noStudents => 'No students yet.';

  @override
  String get notAttended => 'Not attended';

  @override
  String get noteForParentOptional => 'Enter note for parent (optional)...';

  @override
  String noteLabel(String note) {
    return 'Note: $note';
  }

  @override
  String get notFoundError => 'Data not found.';

  @override
  String get notificationsTitle => 'Notifications';

  @override
  String get other => 'Other';

  @override
  String get parent => 'Parent';

  @override
  String get parentInfo => 'Parent information';

  @override
  String parentName(String name) {
    return 'Parent - $name';
  }

  @override
  String get parentRequest => 'Parent request';

  @override
  String get parents => 'Parents';

  @override
  String get password => 'Password';

  @override
  String get passwordMinLengthError => 'Password must be at least 6 characters';

  @override
  String get pendingConfirmation => 'Pending confirmation';

  @override
  String get pendingResponse => 'Pending response';

  @override
  String get phoneNumber => 'Phone number';

  @override
  String get pleaseEnterEmail => 'Please enter email';

  @override
  String get pleaseEnterPassword => 'Please enter password';

  @override
  String get posts => 'Posts';

  @override
  String get present => 'Present';

  @override
  String get readAll => 'Read all';

  @override
  String get reject => 'Reject';

  @override
  String rejectLeaveRequestConfirmMessage(String name) {
    return 'Are you sure you want to reject the leave request for $name?';
  }

  @override
  String get rejectLeaveRequestConfirmTitle => 'Reject leave request?';

  @override
  String get searchPlaceholder => 'Search...';

  @override
  String get searchStudentHint => 'Search student name...';

  @override
  String get serverError =>
      'System is currently experiencing issues. Please try again later.';

  @override
  String get sessionExpiredError => 'Session expired. Please log in again.';

  @override
  String get statusApproved => 'Approved';

  @override
  String get statusPending => 'Pending';

  @override
  String get statusRejected => 'Rejected';

  @override
  String get takeNewPhoto => 'Take a new photo';

  @override
  String get teacher => 'Teacher';

  @override
  String get teachers => 'Teachers';

  @override
  String get timeoutError =>
      'Server connection timed out. Please try again later.';

  @override
  String totalStats(int count) {
    return 'Total: $count';
  }

  @override
  String totalStudentsCount(int count) {
    return 'Total $count students';
  }

  @override
  String get unauthorizedError => 'Invalid email or password.';

  @override
  String get unknown => 'Unknown';

  @override
  String get unknownError => 'An unknown error occurred.';

  @override
  String get versionInfo => 'Version 1.0.0 (Beta)';

  @override
  String get viewDetails => 'View details';

  @override
  String get viewMore => 'View more';

  @override
  String get year => 'years';

  @override
  String get reason => 'Reason';

  @override
  String get sentAt => 'Sent at';

  @override
  String get leaveDay => 'Leave day';

  @override
  String get sentBy => 'Sent by';

  @override
  String get approve => 'Approve';

  @override
  String get noLeaveRequests => 'No leave requests';

  @override
  String noLeaveRequestsWithStatus(String status) {
    return 'No $status leave requests';
  }

  @override
  String get today => 'Today';

  @override
  String get statusPresent => 'Present';

  @override
  String get statusLate => 'Late';

  @override
  String get statusAbsent => 'Absent';

  @override
  String get statusExcused => 'Excused';

  @override
  String get statusNotMarked => 'Not marked';

  @override
  String get checkOutRecord => 'Check out';

  @override
  String get notLeftYet => 'Not left yet';

  @override
  String get approvedLeave => 'Leave approved';

  @override
  String checkedInAt(String time) {
    return 'In at $time';
  }

  @override
  String get teacherApproved => 'Teacher approved';

  @override
  String get otherStatus => 'Other status';

  @override
  String get classList => 'Class list';

  @override
  String attendanceListTitle(String label, int count) {
    return '$label ($count)';
  }

  @override
  String get attendanceTitle => 'Attendance';

  @override
  String get selectStatus => 'Select status';

  @override
  String get inClass => 'In class';

  @override
  String get absentNoReason => 'No valid reason';

  @override
  String get leaveApprovedByParent => 'Parent-approved leave';

  @override
  String get lateArrival => 'Present but arrived late';

  @override
  String todayDateLabel(String date) {
    return 'Today · $date';
  }

  @override
  String get savedAttendanceMorning => 'Morning attendance saved!';

  @override
  String get goBack => 'Go back';
}
