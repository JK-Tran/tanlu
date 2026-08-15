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
  String get cancel => 'Huỷ';

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
  String get studentListTitle => 'Danh sách trẻ';

  @override
  String get studentProfileTitle => 'Hồ sơ trẻ';

  @override
  String get studentNotFound => 'Không tìm thấy học sinh';

  @override
  String get studentTabContact => 'Liên hệ';

  @override
  String get studentTabNotes => 'Ghi chú';

  @override
  String get studentTabAttendance => 'Điểm danh';

  @override
  String get studentTabFeed => 'Bảng tin';

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
  String get attendanceTabAttendance => 'Điểm danh';

  @override
  String get attendanceTabLeave => 'Xin phép';

  @override
  String get attendanceTabHistory => 'Lịch sử';

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

  @override
  String get roleParent => 'Phụ huynh';

  @override
  String get roleTeacher => 'Giáo viên';

  @override
  String get accountAndSecurity => 'Tài khoản và bảo mật';

  @override
  String get username => 'Tên đăng nhập';

  @override
  String get changePassword => 'Đổi mật khẩu';

  @override
  String get personalInfo => 'Thông tin cá nhân';

  @override
  String get fullName => 'Họ và tên';

  @override
  String get role => 'Vai trò';

  @override
  String get classTitle => 'Lớp';

  @override
  String get assignedClass => 'Lớp phụ trách';

  @override
  String get logout => 'Đăng xuất';

  @override
  String get logoutConfirmMsg => 'Bạn có chắc muốn đăng xuất?';

  @override
  String get security => 'Bảo mật';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get notifications => 'Thông báo';

  @override
  String get vietnamese => 'Tiếng Việt';

  @override
  String get english => 'English';

  @override
  String get contentComingSoon => 'Nội dung sẽ được cập nhật sớm';

  @override
  String get helpCenter => 'Trung tâm trợ giúp';

  @override
  String get alwaysReadyToHelp => 'Chúng tôi luôn sẵn sàng hỗ trợ bạn';

  @override
  String get faq => 'Câu hỏi thường gặp';

  @override
  String get contactSupport => 'Liên hệ hỗ trợ';

  @override
  String get userGuide => 'Hướng dẫn sử dụng';

  @override
  String get aboutApp => 'Giới thiệu ứng dụng';

  @override
  String version(String version) {
    return 'Phiên bản $version';
  }

  @override
  String get termsOfUse => 'Điều khoản sử dụng';

  @override
  String get privacyPolicy => 'Chính sách bảo mật';

  @override
  String get rateApp => 'Đánh giá ứng dụng';

  @override
  String get passwordUpdated => 'Đã cập nhật mật khẩu';

  @override
  String get currentPassword => 'Mật khẩu hiện tại';

  @override
  String get newPassword => 'Mật khẩu mới';

  @override
  String get confirmNewPassword => 'Xác nhận mật khẩu mới';

  @override
  String get reqMinChars => 'Ít nhất 8 ký tự';

  @override
  String get reqUpperLower => 'Có chữ hoa và chữ thường';

  @override
  String get reqSpecialChar => 'Có ký tự đặc biệt';

  @override
  String get overviewEvaluate => 'Đánh giá';

  @override
  String get feedCreatePost => 'Tạo bài viết';

  @override
  String get feedMediaRequirePermission => 'Cần quyền truy cập thư viện ảnh. ';

  @override
  String get feedMediaEnableInSettings => 'Vui lòng bật trong Cài đặt.';

  @override
  String feedMaxVideos(int maxVideos) {
    return 'Chỉ chọn tối đa $maxVideos video';
  }

  @override
  String feedVideoSizeExceed(int maxMB) {
    return 'Video vượt $maxMB MB';
  }

  @override
  String feedMaxImages(int maxImages) {
    return 'Chỉ chọn tối đa $maxImages ảnh';
  }

  @override
  String feedSkippedOversizedVideos(int count) {
    return 'Đã bỏ qua $count video vượt ';
  }

  @override
  String feedMaxImagesAndVideos(int maxImages) {
    return 'Đã đủ $maxImages ảnh và ';
  }

  @override
  String feedOnlyMaxImagesAnd(int maxImages) {
    return 'Chỉ chọn tối đa $maxImages ảnh và ';
  }

  @override
  String get feedGallery => 'Thư viện';

  @override
  String get feedNext => 'Tiếp';

  @override
  String feedNextWithCount(int count) {
    return 'Tiếp ($count)';
  }

  @override
  String feedSelectMaxImagesInfo(int maxImages) {
    return 'Chọn tối đa $maxImages ảnh, ';
  }

  @override
  String get feedAndroidGalleryInfo => 'Android mở thư viện hệ thống để chọn.';

  @override
  String get feedSelectMediaFromGallery => 'Chọn ảnh hoặc video từ thư viện';

  @override
  String get feedAfterSelectInfo =>
      'Sau khi chọn, bạn có thể xem lại và chọn thêm.';

  @override
  String get feedOpeningGallery => 'Đang mở thư viện...';

  @override
  String get feedOpenGalleryBtn => 'Mở thư viện ảnh';

  @override
  String get feedSelectMoreBtn => 'Chọn thêm';

  @override
  String get feedTeacherRole => 'Giáo viên';

  @override
  String get feedWhatFunToday => 'Hôm nay lớp mình có gì vui?';

  @override
  String get feedPhotoGallery => 'Thư viện ảnh';

  @override
  String get feedNoClassAssigned => 'Chưa gán lớp';

  @override
  String get feedLoadingClass => 'Đang tải lớp...';

  @override
  String get feedMyClass => 'Lớp của tôi';

  @override
  String get feedPostFor => 'Đăng cho';

  @override
  String get feedPublicOnExplore => 'Công khai trên Khám phá';

  @override
  String get feedWhatAreYouThinking => 'Bạn đang nghĩ gì?';

  @override
  String get feedAddBtn => 'Thêm';

  @override
  String get feedPostBtn => 'Đăng bài';

  @override
  String get feedCannotLoadPost => 'Không thể tải bài viết';

  @override
  String get feedDeletePost => 'Xóa bài viết';

  @override
  String get feedDeletePostConfirmMsg =>
      'Bài viết sẽ bị xóa và không hiển thị trên bảng tin.';

  @override
  String get feedDeleteBtn => 'Xóa';

  @override
  String get feedPostDetailTitle => 'Chi tiết bài viết';

  @override
  String get feedPostNotFound => 'Không tìm thấy bài viết';

  @override
  String get feedCommentOptions => 'Tùy chọn bình luận';

  @override
  String get feedEditComment => 'Sửa bình luận';

  @override
  String get feedDeleteComment => 'Xóa bình luận';

  @override
  String get feedAuthorBadge => 'Tác giả';

  @override
  String get feedWriteCommentHint => 'Viết bình luận...';

  @override
  String feedReplyToAuthor(String authorName) {
    return 'Trả lời $authorName';
  }

  @override
  String get feedEditedMark => '· Đã sửa';

  @override
  String get feedReplyBtn => 'Trả lời';

  @override
  String feedCommentsCount(int total) {
    return 'Bình luận ($total)';
  }

  @override
  String get feedNoCommentsYet =>
      'Chưa có bình luận nào. Hãy là người đầu tiên!';

  @override
  String get feedPostOptions => 'Tùy chọn bài viết';

  @override
  String get feedNotLoggedIn => 'Chưa đăng nhập';

  @override
  String get feedDeletePostSuccess => 'Xóa bài thành công';

  @override
  String get feedNoPublicPosts => 'Chưa có bài viết công khai';

  @override
  String get feedSeeMore => 'Xem thêm';

  @override
  String get feedNewsFeedTitle => 'Bảng tin';

  @override
  String get errorGeneric => 'Đã có lỗi xảy ra, vui lòng thử lại sau.';

  @override
  String get errorIncorrectOldPassword => 'Sai mật khẩu cũ';

  @override
  String get errorMissingPasswords => 'Vui lòng nhập đầy đủ mật khẩu cũ và mới';

  @override
  String get errorPasswordTooShort => 'Mật khẩu mới phải có ít nhất 6 ký tự';

  @override
  String get errorPasswordComplexity =>
      'Mật khẩu mới phải bao gồm chữ hoa, chữ thường và số.';

  @override
  String get chatMessageRevoked => 'Tin nhắn đã bị thu hồi';

  @override
  String get chatMessageImage => '[Hình ảnh]';

  @override
  String get chatMessageFile => '[Tệp đính kèm]';

  @override
  String get chatNoMessagesYet => 'Chưa có tin nhắn nào.';

  @override
  String get chatMediaPermissionRequired =>
      'Vui lòng cấp quyền truy cập ảnh trong cài đặt.';

  @override
  String get chatMediaNoImages => 'Không có ảnh nào.';

  @override
  String get chatInputReplying => 'Đang trả lời';

  @override
  String get chatInputDefaultMessage => 'Tin nhắn';

  @override
  String chatInputSendImageError(String error) {
    return 'Không thể gửi ảnh: $error';
  }

  @override
  String get chatActionReply => 'Trả lời';

  @override
  String get chatActionRevoke => 'Thu hồi';

  @override
  String get chatActionCopy => 'Sao chép';

  @override
  String get chatMsgCopied => 'Đã sao chép tin nhắn';

  @override
  String get chatRevokeTitle => 'Thu hồi tin nhắn';

  @override
  String get chatRevokeConfirmMsg =>
      'Bạn có chắc chắn muốn thu hồi tin nhắn này không? Hành động này không thể hoàn tác.';

  @override
  String get chatMsgRevokedSuccess => 'Đã thu hồi tin nhắn';

  @override
  String get chatReplied => 'Đã trả lời';

  @override
  String get chatMaxImageLimit => 'Bạn chỉ có thể chọn tối đa 10 ảnh';

  @override
  String get chatSearchContactHint => 'Tìm kiếm người liên hệ...';

  @override
  String get chatNoConversationsYet => 'Chưa có cuộc trò chuyện nào.';

  @override
  String get chatSelectContact => 'Chọn người liên hệ';

  @override
  String get chatNoContacts => 'Không có liên hệ nào.';

  @override
  String get chatStatusOnline => 'Trực tuyến';

  @override
  String get chatStatusActive => 'Đang hoạt động';

  @override
  String get chatStatusOffline => 'Không hoạt động';
}
