// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get absent => 'Vắng mặt';

  @override
  String get agree => 'Đồng ý';

  @override
  String get all => 'Tất cả';

  @override
  String approveLeaveRequestConfirmMessage(String name) {
    return 'Bạn có chắc muốn duyệt đơn xin nghỉ của $name?';
  }

  @override
  String get approveLeaveRequestConfirmTitle => 'Duyệt đơn này?';

  @override
  String get attendanceStatusFinalized => 'đã chốt cuối ngày';

  @override
  String get attendanceStatusInProgress => 'đang điểm danh';

  @override
  String get attendanceStatusMorning => 'đã điểm danh sáng';

  @override
  String get attendanceStatusNotYet => 'chưa điểm danh';

  @override
  String attendanceSummary(
    int present,
    int absentExcused,
    int absentUnexcused,
  ) {
    return 'Có mặt $present · Nghỉ phép $absentExcused · Vắng $absentUnexcused';
  }

  @override
  String get attendanceToday => 'Điểm danh hôm nay';

  @override
  String get attended => 'Đã điểm danh';

  @override
  String get callPhone => 'Gọi điện';

  @override
  String get cancel => 'Hủy';

  @override
  String get cannotCallPhone => 'Không thể gọi điện thoại trên thiết bị này';

  @override
  String get cannotPlayVideo => 'Không thể phát video';

  @override
  String get chooseFromGallery => 'Chọn từ thư viện';

  @override
  String classLabel(String classId) {
    return 'Lớp $classId';
  }

  @override
  String get close => 'Đóng';

  @override
  String get comingSoon => 'Sắp ra mắt';

  @override
  String get comment => 'Bình luận';

  @override
  String get comments => 'Bình luận';

  @override
  String commentsCount(String count) {
    return '$count bình luận';
  }

  @override
  String get confirm => 'Xác nhận';

  @override
  String get copied => 'Đã sao chép';

  @override
  String get copyPhoneNumber => 'Sao chép số điện thoại';

  @override
  String get day => 'ngày';

  @override
  String get diagnosis => 'Chẩn đoán';

  @override
  String get enterLoginEmail => 'Nhập email đăng nhập';

  @override
  String get enterYourPassword => 'Nhập mật khẩu của bạn';

  @override
  String get excused => 'Xin phép';

  @override
  String get explore => 'Khám phá';

  @override
  String get featureComingSoon => '(Tính năng sắp ra mắt)';

  @override
  String femaleStats(int count) {
    return 'Nữ: $count';
  }

  @override
  String get forbiddenError => 'Bạn không có quyền thực hiện thao tác này.';

  @override
  String helloUser(String name) {
    return 'Xin chào,\n$name 👋';
  }

  @override
  String get hotline => 'Tổng đài hỗ trợ: 090 134 4756';

  @override
  String get hour => 'giờ';

  @override
  String get imageLoadError => 'Lỗi tải ảnh';

  @override
  String get justNow => 'Vừa xong';

  @override
  String get leaveRequest => 'Yêu cầu xin nghỉ';

  @override
  String leaveRequestPendingCount(int count) {
    return '$count yêu cầu chờ\nxác nhận';
  }

  @override
  String get like => 'Thích';

  @override
  String get login => 'Đăng nhập';

  @override
  String get loginTitleCaps => 'ĐĂNG NHẬP';

  @override
  String maleStats(int count) {
    return 'Nam: $count';
  }

  @override
  String get minute => 'phút';

  @override
  String get month => 'tháng';

  @override
  String get myClass => 'Lớp của tôi';

  @override
  String get navAccount => 'Tài khoản';

  @override
  String get navActivity => 'Hoạt động';

  @override
  String get navFeed => 'Bảng tin';

  @override
  String get navMessage => 'Tin nhắn';

  @override
  String get navOverview => 'Tổng quan';

  @override
  String get navPersonal => 'Cá nhân';

  @override
  String get navProgress => 'Tiến trình';

  @override
  String get navStudent => 'Học sinh';

  @override
  String get networkError => 'Không có kết nối mạng. Vui lòng kiểm tra lại.';

  @override
  String get noAttendanceDataForDay => 'Chưa có dữ liệu điểm danh ngày này';

  @override
  String get noClassUpdated => 'Chưa cập nhật lớp';

  @override
  String get noData => 'Chưa có dữ liệu';

  @override
  String get noInternet => 'Không có kết nối mạng. Đang ngoại tuyến.';

  @override
  String get noNotifications => 'Không có thông báo nào';

  @override
  String get noParentInfo => 'Chưa có thông tin phụ huynh';

  @override
  String get noPostsYet => 'Chưa có bài viết nào';

  @override
  String get noStudentAttendanceYet => 'Chưa có bé nào được điểm danh';

  @override
  String get noStudents => 'Chưa có học sinh.';

  @override
  String get notAttended => 'Chưa điểm danh';

  @override
  String get noteForParentOptional => 'Nhập ghi chú cho phụ huynh (nếu có)...';

  @override
  String noteLabel(String note) {
    return 'Ghi chú: $note';
  }

  @override
  String get notFoundError => 'Không tìm thấy dữ liệu.';

  @override
  String get notificationsTitle => 'Thông báo';

  @override
  String get other => 'Khác';

  @override
  String get parent => 'Phụ huynh';

  @override
  String get parentInfo => 'Thông tin phụ huynh';

  @override
  String parentName(String name) {
    return 'Phụ huynh - $name';
  }

  @override
  String get parentRequest => 'Yêu cầu phụ huynh';

  @override
  String get parents => 'Phụ huynh';

  @override
  String get password => 'Mật khẩu';

  @override
  String get passwordMinLengthError => 'Mật khẩu phải tối thiểu 6 ký tự';

  @override
  String get pendingConfirmation => 'Chờ xác nhận';

  @override
  String get pendingResponse => 'Chờ phản hồi';

  @override
  String get phoneNumber => 'Số điện thoại';

  @override
  String get pleaseEnterEmail => 'Vui lòng nhập email';

  @override
  String get pleaseEnterPassword => 'Vui lòng nhập mật khẩu';

  @override
  String get posts => 'Bài viết';

  @override
  String get present => 'Có mặt';

  @override
  String get readAll => 'Đọc tất cả';

  @override
  String get reject => 'Từ chối';

  @override
  String rejectLeaveRequestConfirmMessage(String name) {
    return 'Bạn có chắc muốn từ chối đơn xin nghỉ của $name?';
  }

  @override
  String get rejectLeaveRequestConfirmTitle => 'Từ chối đơn xin nghỉ?';

  @override
  String get searchPlaceholder => 'Tìm kiếm...';

  @override
  String get searchStudentHint => 'Tìm kiếm tên bé...';

  @override
  String get serverError => 'Hệ thống đang gặp sự cố. Vui lòng thử lại sau.';

  @override
  String get sessionExpiredError =>
      'Phiên đăng nhập hết hạn. Vui lòng đăng nhập lại.';

  @override
  String get statusApproved => 'Đã duyệt';

  @override
  String get statusPending => 'Chờ duyệt';

  @override
  String get statusRejected => 'Đã từ chối';

  @override
  String get takeNewPhoto => 'Chụp ảnh mới';

  @override
  String get teacher => 'Giáo viên';

  @override
  String get teachers => 'Giáo viên';

  @override
  String get timeoutError =>
      'Kết nối máy chủ bị gián đoạn. Vui lòng thử lại sau.';

  @override
  String totalStats(int count) {
    return 'Tổng: $count';
  }

  @override
  String totalStudentsCount(int count) {
    return 'Tổng $count bé';
  }

  @override
  String get unauthorizedError => 'Tài khoản hoặc mật khẩu không chính xác.';

  @override
  String get unknown => 'Không rõ';

  @override
  String get unknownError => 'Đã xảy ra lỗi không xác định.';

  @override
  String get versionInfo => 'Phiên bản 1.0.0 (Beta)';

  @override
  String get viewDetails => 'Xem chi tiết';

  @override
  String get viewMore => 'Xem thêm';

  @override
  String get year => 'năm';

  @override
  String get reason => 'Lý do';

  @override
  String get sentAt => 'Gửi lúc';

  @override
  String get leaveDay => 'Nghỉ ngày';

  @override
  String get sentBy => 'Gửi bởi';

  @override
  String get approve => 'Duyệt';

  @override
  String get noLeaveRequests => 'Chưa có đơn xin nghỉ phép';

  @override
  String noLeaveRequestsWithStatus(String status) {
    return 'Không có đơn $status';
  }

  @override
  String get today => 'Hôm nay';

  @override
  String get statusPresent => 'Có mặt';

  @override
  String get statusLate => 'Đi trễ';

  @override
  String get statusAbsent => 'Vắng mặt';

  @override
  String get statusExcused => 'Nghỉ phép';

  @override
  String get statusNotMarked => 'Chưa điểm danh';

  @override
  String get checkOutRecord => 'Ghi về';

  @override
  String get notLeftYet => 'Chưa về';

  @override
  String get approvedLeave => 'Đã duyệt đơn';

  @override
  String checkedInAt(String time) {
    return 'Vào lúc $time';
  }

  @override
  String get teacherApproved => 'GV đã duyệt';

  @override
  String get otherStatus => 'Trạng thái khác';

  @override
  String get classList => 'Danh sách lớp';

  @override
  String attendanceListTitle(String label, int count) {
    return '$label ($count)';
  }

  @override
  String get attendanceTitle => 'Điểm danh';

  @override
  String get selectStatus => 'Chọn trạng thái';

  @override
  String get inClass => 'Có trong lớp';

  @override
  String get absentNoReason => 'Không có lý do chính đáng';

  @override
  String get leaveApprovedByParent => 'Đã được phụ huynh xin phép';

  @override
  String get lateArrival => 'Có mặt nhưng đến muộn';

  @override
  String todayDateLabel(String date) {
    return 'Hôm nay · $date';
  }

  @override
  String get savedAttendanceMorning => 'Đã lưu điểm danh sáng!';

  @override
  String get goBack => 'Quay lại';
}
