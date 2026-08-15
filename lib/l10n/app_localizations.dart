import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi'),
  ];

  /// No description provided for @absent.
  ///
  /// In vi, this message translates to:
  /// **'Vắng mặt'**
  String get absent;

  /// No description provided for @agree.
  ///
  /// In vi, this message translates to:
  /// **'Đồng ý'**
  String get agree;

  /// No description provided for @all.
  ///
  /// In vi, this message translates to:
  /// **'Tất cả'**
  String get all;

  /// No description provided for @approveLeaveRequestConfirmMessage.
  ///
  /// In vi, this message translates to:
  /// **'Bạn có chắc muốn duyệt đơn xin nghỉ của {name}?'**
  String approveLeaveRequestConfirmMessage(String name);

  /// No description provided for @approveLeaveRequestConfirmTitle.
  ///
  /// In vi, this message translates to:
  /// **'Duyệt đơn này?'**
  String get approveLeaveRequestConfirmTitle;

  /// No description provided for @attendanceStatusFinalized.
  ///
  /// In vi, this message translates to:
  /// **'đã chốt cuối ngày'**
  String get attendanceStatusFinalized;

  /// No description provided for @attendanceStatusInProgress.
  ///
  /// In vi, this message translates to:
  /// **'đang điểm danh'**
  String get attendanceStatusInProgress;

  /// No description provided for @attendanceStatusMorning.
  ///
  /// In vi, this message translates to:
  /// **'đã điểm danh sáng'**
  String get attendanceStatusMorning;

  /// No description provided for @attendanceStatusNotYet.
  ///
  /// In vi, this message translates to:
  /// **'chưa điểm danh'**
  String get attendanceStatusNotYet;

  /// No description provided for @attendanceSummary.
  ///
  /// In vi, this message translates to:
  /// **'Có mặt {present} · Nghỉ phép {absentExcused} · Vắng {absentUnexcused}'**
  String attendanceSummary(int present, int absentExcused, int absentUnexcused);

  /// No description provided for @attendanceToday.
  ///
  /// In vi, this message translates to:
  /// **'Điểm danh hôm nay'**
  String get attendanceToday;

  /// No description provided for @attended.
  ///
  /// In vi, this message translates to:
  /// **'Đã điểm danh'**
  String get attended;

  /// No description provided for @callPhone.
  ///
  /// In vi, this message translates to:
  /// **'Gọi điện'**
  String get callPhone;

  /// No description provided for @cancel.
  ///
  /// In vi, this message translates to:
  /// **'Huỷ'**
  String get cancel;

  /// No description provided for @cannotCallPhone.
  ///
  /// In vi, this message translates to:
  /// **'Không thể gọi điện thoại trên thiết bị này'**
  String get cannotCallPhone;

  /// No description provided for @cannotPlayVideo.
  ///
  /// In vi, this message translates to:
  /// **'Không thể phát video'**
  String get cannotPlayVideo;

  /// No description provided for @chooseFromGallery.
  ///
  /// In vi, this message translates to:
  /// **'Chọn từ thư viện'**
  String get chooseFromGallery;

  /// No description provided for @classLabel.
  ///
  /// In vi, this message translates to:
  /// **'Lớp {classId}'**
  String classLabel(String classId);

  /// No description provided for @close.
  ///
  /// In vi, this message translates to:
  /// **'Đóng'**
  String get close;

  /// No description provided for @comingSoon.
  ///
  /// In vi, this message translates to:
  /// **'Sắp ra mắt'**
  String get comingSoon;

  /// No description provided for @comment.
  ///
  /// In vi, this message translates to:
  /// **'Bình luận'**
  String get comment;

  /// No description provided for @comments.
  ///
  /// In vi, this message translates to:
  /// **'Bình luận'**
  String get comments;

  /// No description provided for @commentsCount.
  ///
  /// In vi, this message translates to:
  /// **'{count} bình luận'**
  String commentsCount(String count);

  /// No description provided for @confirm.
  ///
  /// In vi, this message translates to:
  /// **'Xác nhận'**
  String get confirm;

  /// No description provided for @copied.
  ///
  /// In vi, this message translates to:
  /// **'Đã sao chép'**
  String get copied;

  /// No description provided for @copyPhoneNumber.
  ///
  /// In vi, this message translates to:
  /// **'Sao chép số điện thoại'**
  String get copyPhoneNumber;

  /// No description provided for @day.
  ///
  /// In vi, this message translates to:
  /// **'ngày'**
  String get day;

  /// No description provided for @diagnosis.
  ///
  /// In vi, this message translates to:
  /// **'Chẩn đoán'**
  String get diagnosis;

  /// No description provided for @enterLoginEmail.
  ///
  /// In vi, this message translates to:
  /// **'Nhập email đăng nhập'**
  String get enterLoginEmail;

  /// No description provided for @enterYourPassword.
  ///
  /// In vi, this message translates to:
  /// **'Nhập mật khẩu của bạn'**
  String get enterYourPassword;

  /// No description provided for @excused.
  ///
  /// In vi, this message translates to:
  /// **'Xin phép'**
  String get excused;

  /// No description provided for @explore.
  ///
  /// In vi, this message translates to:
  /// **'Khám phá'**
  String get explore;

  /// No description provided for @featureComingSoon.
  ///
  /// In vi, this message translates to:
  /// **'(Tính năng sắp ra mắt)'**
  String get featureComingSoon;

  /// No description provided for @femaleStats.
  ///
  /// In vi, this message translates to:
  /// **'Nữ: {count}'**
  String femaleStats(int count);

  /// No description provided for @forbiddenError.
  ///
  /// In vi, this message translates to:
  /// **'Bạn không có quyền thực hiện thao tác này.'**
  String get forbiddenError;

  /// No description provided for @helloUser.
  ///
  /// In vi, this message translates to:
  /// **'Xin chào,\n{name} 👋'**
  String helloUser(String name);

  /// No description provided for @hotline.
  ///
  /// In vi, this message translates to:
  /// **'Tổng đài hỗ trợ: 090 134 4756'**
  String get hotline;

  /// No description provided for @hour.
  ///
  /// In vi, this message translates to:
  /// **'giờ'**
  String get hour;

  /// No description provided for @imageLoadError.
  ///
  /// In vi, this message translates to:
  /// **'Lỗi tải ảnh'**
  String get imageLoadError;

  /// No description provided for @justNow.
  ///
  /// In vi, this message translates to:
  /// **'Vừa xong'**
  String get justNow;

  /// No description provided for @leaveRequest.
  ///
  /// In vi, this message translates to:
  /// **'Yêu cầu xin nghỉ'**
  String get leaveRequest;

  /// No description provided for @leaveRequestPendingCount.
  ///
  /// In vi, this message translates to:
  /// **'{count} yêu cầu chờ\nxác nhận'**
  String leaveRequestPendingCount(int count);

  /// No description provided for @like.
  ///
  /// In vi, this message translates to:
  /// **'Thích'**
  String get like;

  /// No description provided for @login.
  ///
  /// In vi, this message translates to:
  /// **'Đăng nhập'**
  String get login;

  /// No description provided for @loginTitleCaps.
  ///
  /// In vi, this message translates to:
  /// **'ĐĂNG NHẬP'**
  String get loginTitleCaps;

  /// No description provided for @maleStats.
  ///
  /// In vi, this message translates to:
  /// **'Nam: {count}'**
  String maleStats(int count);

  /// No description provided for @minute.
  ///
  /// In vi, this message translates to:
  /// **'phút'**
  String get minute;

  /// No description provided for @month.
  ///
  /// In vi, this message translates to:
  /// **'tháng'**
  String get month;

  /// No description provided for @myClass.
  ///
  /// In vi, this message translates to:
  /// **'Lớp của tôi'**
  String get myClass;

  /// No description provided for @navAccount.
  ///
  /// In vi, this message translates to:
  /// **'Tài khoản'**
  String get navAccount;

  /// No description provided for @navActivity.
  ///
  /// In vi, this message translates to:
  /// **'Hoạt động'**
  String get navActivity;

  /// No description provided for @navFeed.
  ///
  /// In vi, this message translates to:
  /// **'Bảng tin'**
  String get navFeed;

  /// No description provided for @navMessage.
  ///
  /// In vi, this message translates to:
  /// **'Tin nhắn'**
  String get navMessage;

  /// No description provided for @navOverview.
  ///
  /// In vi, this message translates to:
  /// **'Tổng quan'**
  String get navOverview;

  /// No description provided for @navPersonal.
  ///
  /// In vi, this message translates to:
  /// **'Cá nhân'**
  String get navPersonal;

  /// No description provided for @navProgress.
  ///
  /// In vi, this message translates to:
  /// **'Tiến trình'**
  String get navProgress;

  /// No description provided for @navStudent.
  ///
  /// In vi, this message translates to:
  /// **'Học sinh'**
  String get navStudent;

  /// No description provided for @studentListTitle.
  ///
  /// In vi, this message translates to:
  /// **'Danh sách trẻ'**
  String get studentListTitle;

  /// No description provided for @studentProfileTitle.
  ///
  /// In vi, this message translates to:
  /// **'Hồ sơ trẻ'**
  String get studentProfileTitle;

  /// No description provided for @studentNotFound.
  ///
  /// In vi, this message translates to:
  /// **'Không tìm thấy học sinh'**
  String get studentNotFound;

  /// No description provided for @studentTabContact.
  ///
  /// In vi, this message translates to:
  /// **'Liên hệ'**
  String get studentTabContact;

  /// No description provided for @studentTabNotes.
  ///
  /// In vi, this message translates to:
  /// **'Ghi chú'**
  String get studentTabNotes;

  /// No description provided for @studentTabAttendance.
  ///
  /// In vi, this message translates to:
  /// **'Điểm danh'**
  String get studentTabAttendance;

  /// No description provided for @studentTabFeed.
  ///
  /// In vi, this message translates to:
  /// **'Bảng tin'**
  String get studentTabFeed;

  /// No description provided for @networkError.
  ///
  /// In vi, this message translates to:
  /// **'Không có kết nối mạng. Vui lòng kiểm tra lại.'**
  String get networkError;

  /// No description provided for @noAttendanceDataForDay.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có dữ liệu điểm danh ngày này'**
  String get noAttendanceDataForDay;

  /// No description provided for @noClassUpdated.
  ///
  /// In vi, this message translates to:
  /// **'Chưa cập nhật lớp'**
  String get noClassUpdated;

  /// No description provided for @noData.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có dữ liệu'**
  String get noData;

  /// No description provided for @noInternet.
  ///
  /// In vi, this message translates to:
  /// **'Không có kết nối mạng. Đang ngoại tuyến.'**
  String get noInternet;

  /// No description provided for @noNotifications.
  ///
  /// In vi, this message translates to:
  /// **'Không có thông báo nào'**
  String get noNotifications;

  /// No description provided for @noParentInfo.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có thông tin phụ huynh'**
  String get noParentInfo;

  /// No description provided for @noPostsYet.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có bài viết nào'**
  String get noPostsYet;

  /// No description provided for @noStudentAttendanceYet.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có bé nào được điểm danh'**
  String get noStudentAttendanceYet;

  /// No description provided for @noStudents.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có học sinh.'**
  String get noStudents;

  /// No description provided for @notAttended.
  ///
  /// In vi, this message translates to:
  /// **'Chưa điểm danh'**
  String get notAttended;

  /// No description provided for @noteForParentOptional.
  ///
  /// In vi, this message translates to:
  /// **'Nhập ghi chú cho phụ huynh (nếu có)...'**
  String get noteForParentOptional;

  /// No description provided for @noteLabel.
  ///
  /// In vi, this message translates to:
  /// **'Ghi chú: {note}'**
  String noteLabel(String note);

  /// No description provided for @notFoundError.
  ///
  /// In vi, this message translates to:
  /// **'Không tìm thấy dữ liệu.'**
  String get notFoundError;

  /// No description provided for @notificationsTitle.
  ///
  /// In vi, this message translates to:
  /// **'Thông báo'**
  String get notificationsTitle;

  /// No description provided for @other.
  ///
  /// In vi, this message translates to:
  /// **'Khác'**
  String get other;

  /// No description provided for @parent.
  ///
  /// In vi, this message translates to:
  /// **'Phụ huynh'**
  String get parent;

  /// No description provided for @parentInfo.
  ///
  /// In vi, this message translates to:
  /// **'Thông tin phụ huynh'**
  String get parentInfo;

  /// No description provided for @parentName.
  ///
  /// In vi, this message translates to:
  /// **'Phụ huynh - {name}'**
  String parentName(String name);

  /// No description provided for @parentRequest.
  ///
  /// In vi, this message translates to:
  /// **'Yêu cầu phụ huynh'**
  String get parentRequest;

  /// No description provided for @parents.
  ///
  /// In vi, this message translates to:
  /// **'Phụ huynh'**
  String get parents;

  /// No description provided for @password.
  ///
  /// In vi, this message translates to:
  /// **'Mật khẩu'**
  String get password;

  /// No description provided for @passwordMinLengthError.
  ///
  /// In vi, this message translates to:
  /// **'Mật khẩu phải tối thiểu 6 ký tự'**
  String get passwordMinLengthError;

  /// No description provided for @pendingConfirmation.
  ///
  /// In vi, this message translates to:
  /// **'Chờ xác nhận'**
  String get pendingConfirmation;

  /// No description provided for @pendingResponse.
  ///
  /// In vi, this message translates to:
  /// **'Chờ phản hồi'**
  String get pendingResponse;

  /// No description provided for @phoneNumber.
  ///
  /// In vi, this message translates to:
  /// **'Số điện thoại'**
  String get phoneNumber;

  /// No description provided for @pleaseEnterEmail.
  ///
  /// In vi, this message translates to:
  /// **'Vui lòng nhập email'**
  String get pleaseEnterEmail;

  /// No description provided for @pleaseEnterPassword.
  ///
  /// In vi, this message translates to:
  /// **'Vui lòng nhập mật khẩu'**
  String get pleaseEnterPassword;

  /// No description provided for @posts.
  ///
  /// In vi, this message translates to:
  /// **'Bài viết'**
  String get posts;

  /// No description provided for @present.
  ///
  /// In vi, this message translates to:
  /// **'Có mặt'**
  String get present;

  /// No description provided for @readAll.
  ///
  /// In vi, this message translates to:
  /// **'Đọc tất cả'**
  String get readAll;

  /// No description provided for @reject.
  ///
  /// In vi, this message translates to:
  /// **'Từ chối'**
  String get reject;

  /// No description provided for @rejectLeaveRequestConfirmMessage.
  ///
  /// In vi, this message translates to:
  /// **'Bạn có chắc muốn từ chối đơn xin nghỉ của {name}?'**
  String rejectLeaveRequestConfirmMessage(String name);

  /// No description provided for @rejectLeaveRequestConfirmTitle.
  ///
  /// In vi, this message translates to:
  /// **'Từ chối đơn xin nghỉ?'**
  String get rejectLeaveRequestConfirmTitle;

  /// No description provided for @searchPlaceholder.
  ///
  /// In vi, this message translates to:
  /// **'Tìm kiếm...'**
  String get searchPlaceholder;

  /// No description provided for @searchStudentHint.
  ///
  /// In vi, this message translates to:
  /// **'Tìm kiếm tên bé...'**
  String get searchStudentHint;

  /// No description provided for @serverError.
  ///
  /// In vi, this message translates to:
  /// **'Hệ thống đang gặp sự cố. Vui lòng thử lại sau.'**
  String get serverError;

  /// No description provided for @sessionExpiredError.
  ///
  /// In vi, this message translates to:
  /// **'Phiên đăng nhập hết hạn. Vui lòng đăng nhập lại.'**
  String get sessionExpiredError;

  /// No description provided for @statusApproved.
  ///
  /// In vi, this message translates to:
  /// **'Đã duyệt'**
  String get statusApproved;

  /// No description provided for @statusPending.
  ///
  /// In vi, this message translates to:
  /// **'Chờ duyệt'**
  String get statusPending;

  /// No description provided for @statusRejected.
  ///
  /// In vi, this message translates to:
  /// **'Đã từ chối'**
  String get statusRejected;

  /// No description provided for @takeNewPhoto.
  ///
  /// In vi, this message translates to:
  /// **'Chụp ảnh mới'**
  String get takeNewPhoto;

  /// No description provided for @teacher.
  ///
  /// In vi, this message translates to:
  /// **'Giáo viên'**
  String get teacher;

  /// No description provided for @teachers.
  ///
  /// In vi, this message translates to:
  /// **'Giáo viên'**
  String get teachers;

  /// No description provided for @timeoutError.
  ///
  /// In vi, this message translates to:
  /// **'Kết nối máy chủ bị gián đoạn. Vui lòng thử lại sau.'**
  String get timeoutError;

  /// No description provided for @totalStats.
  ///
  /// In vi, this message translates to:
  /// **'Tổng: {count}'**
  String totalStats(int count);

  /// No description provided for @totalStudentsCount.
  ///
  /// In vi, this message translates to:
  /// **'Tổng {count} bé'**
  String totalStudentsCount(int count);

  /// No description provided for @unauthorizedError.
  ///
  /// In vi, this message translates to:
  /// **'Tài khoản hoặc mật khẩu không chính xác.'**
  String get unauthorizedError;

  /// No description provided for @unknown.
  ///
  /// In vi, this message translates to:
  /// **'Không rõ'**
  String get unknown;

  /// No description provided for @unknownError.
  ///
  /// In vi, this message translates to:
  /// **'Đã xảy ra lỗi không xác định.'**
  String get unknownError;

  /// No description provided for @versionInfo.
  ///
  /// In vi, this message translates to:
  /// **'Phiên bản 1.0.0 (Beta)'**
  String get versionInfo;

  /// No description provided for @viewDetails.
  ///
  /// In vi, this message translates to:
  /// **'Xem chi tiết'**
  String get viewDetails;

  /// No description provided for @viewMore.
  ///
  /// In vi, this message translates to:
  /// **'Xem thêm'**
  String get viewMore;

  /// No description provided for @year.
  ///
  /// In vi, this message translates to:
  /// **'năm'**
  String get year;

  /// No description provided for @reason.
  ///
  /// In vi, this message translates to:
  /// **'Lý do'**
  String get reason;

  /// No description provided for @sentAt.
  ///
  /// In vi, this message translates to:
  /// **'Gửi lúc'**
  String get sentAt;

  /// No description provided for @leaveDay.
  ///
  /// In vi, this message translates to:
  /// **'Nghỉ ngày'**
  String get leaveDay;

  /// No description provided for @sentBy.
  ///
  /// In vi, this message translates to:
  /// **'Gửi bởi'**
  String get sentBy;

  /// No description provided for @approve.
  ///
  /// In vi, this message translates to:
  /// **'Duyệt'**
  String get approve;

  /// No description provided for @noLeaveRequests.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có đơn xin nghỉ phép'**
  String get noLeaveRequests;

  /// No description provided for @noLeaveRequestsWithStatus.
  ///
  /// In vi, this message translates to:
  /// **'Không có đơn {status}'**
  String noLeaveRequestsWithStatus(String status);

  /// No description provided for @today.
  ///
  /// In vi, this message translates to:
  /// **'Hôm nay'**
  String get today;

  /// No description provided for @statusPresent.
  ///
  /// In vi, this message translates to:
  /// **'Có mặt'**
  String get statusPresent;

  /// No description provided for @statusLate.
  ///
  /// In vi, this message translates to:
  /// **'Đi trễ'**
  String get statusLate;

  /// No description provided for @statusAbsent.
  ///
  /// In vi, this message translates to:
  /// **'Vắng mặt'**
  String get statusAbsent;

  /// No description provided for @statusExcused.
  ///
  /// In vi, this message translates to:
  /// **'Nghỉ phép'**
  String get statusExcused;

  /// No description provided for @statusNotMarked.
  ///
  /// In vi, this message translates to:
  /// **'Chưa điểm danh'**
  String get statusNotMarked;

  /// No description provided for @checkOutRecord.
  ///
  /// In vi, this message translates to:
  /// **'Ghi về'**
  String get checkOutRecord;

  /// No description provided for @notLeftYet.
  ///
  /// In vi, this message translates to:
  /// **'Chưa về'**
  String get notLeftYet;

  /// No description provided for @approvedLeave.
  ///
  /// In vi, this message translates to:
  /// **'Đã duyệt đơn'**
  String get approvedLeave;

  /// No description provided for @checkedInAt.
  ///
  /// In vi, this message translates to:
  /// **'Vào lúc {time}'**
  String checkedInAt(String time);

  /// No description provided for @teacherApproved.
  ///
  /// In vi, this message translates to:
  /// **'GV đã duyệt'**
  String get teacherApproved;

  /// No description provided for @otherStatus.
  ///
  /// In vi, this message translates to:
  /// **'Trạng thái khác'**
  String get otherStatus;

  /// No description provided for @classList.
  ///
  /// In vi, this message translates to:
  /// **'Danh sách lớp'**
  String get classList;

  /// No description provided for @attendanceListTitle.
  ///
  /// In vi, this message translates to:
  /// **'{label} ({count})'**
  String attendanceListTitle(String label, int count);

  /// No description provided for @attendanceTabAttendance.
  ///
  /// In vi, this message translates to:
  /// **'Điểm danh'**
  String get attendanceTabAttendance;

  /// No description provided for @attendanceTabLeave.
  ///
  /// In vi, this message translates to:
  /// **'Xin phép'**
  String get attendanceTabLeave;

  /// No description provided for @attendanceTabHistory.
  ///
  /// In vi, this message translates to:
  /// **'Lịch sử'**
  String get attendanceTabHistory;

  /// No description provided for @attendanceTitle.
  ///
  /// In vi, this message translates to:
  /// **'Điểm danh'**
  String get attendanceTitle;

  /// No description provided for @selectStatus.
  ///
  /// In vi, this message translates to:
  /// **'Chọn trạng thái'**
  String get selectStatus;

  /// No description provided for @inClass.
  ///
  /// In vi, this message translates to:
  /// **'Có trong lớp'**
  String get inClass;

  /// No description provided for @absentNoReason.
  ///
  /// In vi, this message translates to:
  /// **'Không có lý do chính đáng'**
  String get absentNoReason;

  /// No description provided for @leaveApprovedByParent.
  ///
  /// In vi, this message translates to:
  /// **'Đã được phụ huynh xin phép'**
  String get leaveApprovedByParent;

  /// No description provided for @lateArrival.
  ///
  /// In vi, this message translates to:
  /// **'Có mặt nhưng đến muộn'**
  String get lateArrival;

  /// No description provided for @todayDateLabel.
  ///
  /// In vi, this message translates to:
  /// **'Hôm nay · {date}'**
  String todayDateLabel(String date);

  /// No description provided for @savedAttendanceMorning.
  ///
  /// In vi, this message translates to:
  /// **'Đã lưu điểm danh sáng!'**
  String get savedAttendanceMorning;

  /// No description provided for @goBack.
  ///
  /// In vi, this message translates to:
  /// **'Quay lại'**
  String get goBack;

  /// No description provided for @roleParent.
  ///
  /// In vi, this message translates to:
  /// **'Phụ huynh'**
  String get roleParent;

  /// No description provided for @roleTeacher.
  ///
  /// In vi, this message translates to:
  /// **'Giáo viên'**
  String get roleTeacher;

  /// No description provided for @accountAndSecurity.
  ///
  /// In vi, this message translates to:
  /// **'Tài khoản và bảo mật'**
  String get accountAndSecurity;

  /// No description provided for @username.
  ///
  /// In vi, this message translates to:
  /// **'Tên đăng nhập'**
  String get username;

  /// No description provided for @changePassword.
  ///
  /// In vi, this message translates to:
  /// **'Đổi mật khẩu'**
  String get changePassword;

  /// No description provided for @personalInfo.
  ///
  /// In vi, this message translates to:
  /// **'Thông tin cá nhân'**
  String get personalInfo;

  /// No description provided for @fullName.
  ///
  /// In vi, this message translates to:
  /// **'Họ và tên'**
  String get fullName;

  /// No description provided for @role.
  ///
  /// In vi, this message translates to:
  /// **'Vai trò'**
  String get role;

  /// No description provided for @classTitle.
  ///
  /// In vi, this message translates to:
  /// **'Lớp'**
  String get classTitle;

  /// No description provided for @assignedClass.
  ///
  /// In vi, this message translates to:
  /// **'Lớp phụ trách'**
  String get assignedClass;

  /// No description provided for @logout.
  ///
  /// In vi, this message translates to:
  /// **'Đăng xuất'**
  String get logout;

  /// No description provided for @logoutConfirmMsg.
  ///
  /// In vi, this message translates to:
  /// **'Bạn có chắc muốn đăng xuất?'**
  String get logoutConfirmMsg;

  /// No description provided for @security.
  ///
  /// In vi, this message translates to:
  /// **'Bảo mật'**
  String get security;

  /// No description provided for @language.
  ///
  /// In vi, this message translates to:
  /// **'Ngôn ngữ'**
  String get language;

  /// No description provided for @notifications.
  ///
  /// In vi, this message translates to:
  /// **'Thông báo'**
  String get notifications;

  /// No description provided for @vietnamese.
  ///
  /// In vi, this message translates to:
  /// **'Tiếng Việt'**
  String get vietnamese;

  /// No description provided for @english.
  ///
  /// In vi, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @contentComingSoon.
  ///
  /// In vi, this message translates to:
  /// **'Nội dung sẽ được cập nhật sớm'**
  String get contentComingSoon;

  /// No description provided for @helpCenter.
  ///
  /// In vi, this message translates to:
  /// **'Trung tâm trợ giúp'**
  String get helpCenter;

  /// No description provided for @alwaysReadyToHelp.
  ///
  /// In vi, this message translates to:
  /// **'Chúng tôi luôn sẵn sàng hỗ trợ bạn'**
  String get alwaysReadyToHelp;

  /// No description provided for @faq.
  ///
  /// In vi, this message translates to:
  /// **'Câu hỏi thường gặp'**
  String get faq;

  /// No description provided for @contactSupport.
  ///
  /// In vi, this message translates to:
  /// **'Liên hệ hỗ trợ'**
  String get contactSupport;

  /// No description provided for @userGuide.
  ///
  /// In vi, this message translates to:
  /// **'Hướng dẫn sử dụng'**
  String get userGuide;

  /// No description provided for @aboutApp.
  ///
  /// In vi, this message translates to:
  /// **'Giới thiệu ứng dụng'**
  String get aboutApp;

  /// No description provided for @version.
  ///
  /// In vi, this message translates to:
  /// **'Phiên bản {version}'**
  String version(String version);

  /// No description provided for @termsOfUse.
  ///
  /// In vi, this message translates to:
  /// **'Điều khoản sử dụng'**
  String get termsOfUse;

  /// No description provided for @privacyPolicy.
  ///
  /// In vi, this message translates to:
  /// **'Chính sách bảo mật'**
  String get privacyPolicy;

  /// No description provided for @rateApp.
  ///
  /// In vi, this message translates to:
  /// **'Đánh giá ứng dụng'**
  String get rateApp;

  /// No description provided for @passwordUpdated.
  ///
  /// In vi, this message translates to:
  /// **'Đã cập nhật mật khẩu'**
  String get passwordUpdated;

  /// No description provided for @currentPassword.
  ///
  /// In vi, this message translates to:
  /// **'Mật khẩu hiện tại'**
  String get currentPassword;

  /// No description provided for @newPassword.
  ///
  /// In vi, this message translates to:
  /// **'Mật khẩu mới'**
  String get newPassword;

  /// No description provided for @confirmNewPassword.
  ///
  /// In vi, this message translates to:
  /// **'Xác nhận mật khẩu mới'**
  String get confirmNewPassword;

  /// No description provided for @reqMinChars.
  ///
  /// In vi, this message translates to:
  /// **'Ít nhất 8 ký tự'**
  String get reqMinChars;

  /// No description provided for @reqUpperLower.
  ///
  /// In vi, this message translates to:
  /// **'Có chữ hoa và chữ thường'**
  String get reqUpperLower;

  /// No description provided for @reqSpecialChar.
  ///
  /// In vi, this message translates to:
  /// **'Có ký tự đặc biệt'**
  String get reqSpecialChar;

  /// No description provided for @overviewEvaluate.
  ///
  /// In vi, this message translates to:
  /// **'Đánh giá'**
  String get overviewEvaluate;

  /// No description provided for @feedCreatePost.
  ///
  /// In vi, this message translates to:
  /// **'Tạo bài viết'**
  String get feedCreatePost;

  /// No description provided for @feedMediaRequirePermission.
  ///
  /// In vi, this message translates to:
  /// **'Cần quyền truy cập thư viện ảnh. '**
  String get feedMediaRequirePermission;

  /// No description provided for @feedMediaEnableInSettings.
  ///
  /// In vi, this message translates to:
  /// **'Vui lòng bật trong Cài đặt.'**
  String get feedMediaEnableInSettings;

  /// No description provided for @feedMaxVideos.
  ///
  /// In vi, this message translates to:
  /// **'Chỉ chọn tối đa {maxVideos} video'**
  String feedMaxVideos(int maxVideos);

  /// No description provided for @feedVideoSizeExceed.
  ///
  /// In vi, this message translates to:
  /// **'Video vượt {maxMB} MB'**
  String feedVideoSizeExceed(int maxMB);

  /// No description provided for @feedMaxImages.
  ///
  /// In vi, this message translates to:
  /// **'Chỉ chọn tối đa {maxImages} ảnh'**
  String feedMaxImages(int maxImages);

  /// No description provided for @feedSkippedOversizedVideos.
  ///
  /// In vi, this message translates to:
  /// **'Đã bỏ qua {count} video vượt '**
  String feedSkippedOversizedVideos(int count);

  /// No description provided for @feedMaxImagesAndVideos.
  ///
  /// In vi, this message translates to:
  /// **'Đã đủ {maxImages} ảnh và '**
  String feedMaxImagesAndVideos(int maxImages);

  /// No description provided for @feedOnlyMaxImagesAnd.
  ///
  /// In vi, this message translates to:
  /// **'Chỉ chọn tối đa {maxImages} ảnh và '**
  String feedOnlyMaxImagesAnd(int maxImages);

  /// No description provided for @feedGallery.
  ///
  /// In vi, this message translates to:
  /// **'Thư viện'**
  String get feedGallery;

  /// No description provided for @feedNext.
  ///
  /// In vi, this message translates to:
  /// **'Tiếp'**
  String get feedNext;

  /// No description provided for @feedNextWithCount.
  ///
  /// In vi, this message translates to:
  /// **'Tiếp ({count})'**
  String feedNextWithCount(int count);

  /// No description provided for @feedSelectMaxImagesInfo.
  ///
  /// In vi, this message translates to:
  /// **'Chọn tối đa {maxImages} ảnh, '**
  String feedSelectMaxImagesInfo(int maxImages);

  /// No description provided for @feedAndroidGalleryInfo.
  ///
  /// In vi, this message translates to:
  /// **'Android mở thư viện hệ thống để chọn.'**
  String get feedAndroidGalleryInfo;

  /// No description provided for @feedSelectMediaFromGallery.
  ///
  /// In vi, this message translates to:
  /// **'Chọn ảnh hoặc video từ thư viện'**
  String get feedSelectMediaFromGallery;

  /// No description provided for @feedAfterSelectInfo.
  ///
  /// In vi, this message translates to:
  /// **'Sau khi chọn, bạn có thể xem lại và chọn thêm.'**
  String get feedAfterSelectInfo;

  /// No description provided for @feedOpeningGallery.
  ///
  /// In vi, this message translates to:
  /// **'Đang mở thư viện...'**
  String get feedOpeningGallery;

  /// No description provided for @feedOpenGalleryBtn.
  ///
  /// In vi, this message translates to:
  /// **'Mở thư viện ảnh'**
  String get feedOpenGalleryBtn;

  /// No description provided for @feedSelectMoreBtn.
  ///
  /// In vi, this message translates to:
  /// **'Chọn thêm'**
  String get feedSelectMoreBtn;

  /// No description provided for @feedTeacherRole.
  ///
  /// In vi, this message translates to:
  /// **'Giáo viên'**
  String get feedTeacherRole;

  /// No description provided for @feedWhatFunToday.
  ///
  /// In vi, this message translates to:
  /// **'Hôm nay lớp mình có gì vui?'**
  String get feedWhatFunToday;

  /// No description provided for @feedPhotoGallery.
  ///
  /// In vi, this message translates to:
  /// **'Thư viện ảnh'**
  String get feedPhotoGallery;

  /// No description provided for @feedNoClassAssigned.
  ///
  /// In vi, this message translates to:
  /// **'Chưa gán lớp'**
  String get feedNoClassAssigned;

  /// No description provided for @feedLoadingClass.
  ///
  /// In vi, this message translates to:
  /// **'Đang tải lớp...'**
  String get feedLoadingClass;

  /// No description provided for @feedMyClass.
  ///
  /// In vi, this message translates to:
  /// **'Lớp của tôi'**
  String get feedMyClass;

  /// No description provided for @feedPostFor.
  ///
  /// In vi, this message translates to:
  /// **'Đăng cho'**
  String get feedPostFor;

  /// No description provided for @feedPublicOnExplore.
  ///
  /// In vi, this message translates to:
  /// **'Công khai trên Khám phá'**
  String get feedPublicOnExplore;

  /// No description provided for @feedWhatAreYouThinking.
  ///
  /// In vi, this message translates to:
  /// **'Bạn đang nghĩ gì?'**
  String get feedWhatAreYouThinking;

  /// No description provided for @feedAddBtn.
  ///
  /// In vi, this message translates to:
  /// **'Thêm'**
  String get feedAddBtn;

  /// No description provided for @feedPostBtn.
  ///
  /// In vi, this message translates to:
  /// **'Đăng bài'**
  String get feedPostBtn;

  /// No description provided for @feedCannotLoadPost.
  ///
  /// In vi, this message translates to:
  /// **'Không thể tải bài viết'**
  String get feedCannotLoadPost;

  /// No description provided for @feedDeletePost.
  ///
  /// In vi, this message translates to:
  /// **'Xóa bài viết'**
  String get feedDeletePost;

  /// No description provided for @feedDeletePostConfirmMsg.
  ///
  /// In vi, this message translates to:
  /// **'Bài viết sẽ bị xóa và không hiển thị trên bảng tin.'**
  String get feedDeletePostConfirmMsg;

  /// No description provided for @feedDeleteBtn.
  ///
  /// In vi, this message translates to:
  /// **'Xóa'**
  String get feedDeleteBtn;

  /// No description provided for @feedPostDetailTitle.
  ///
  /// In vi, this message translates to:
  /// **'Chi tiết bài viết'**
  String get feedPostDetailTitle;

  /// No description provided for @feedPostNotFound.
  ///
  /// In vi, this message translates to:
  /// **'Không tìm thấy bài viết'**
  String get feedPostNotFound;

  /// No description provided for @feedCommentOptions.
  ///
  /// In vi, this message translates to:
  /// **'Tùy chọn bình luận'**
  String get feedCommentOptions;

  /// No description provided for @feedEditComment.
  ///
  /// In vi, this message translates to:
  /// **'Sửa bình luận'**
  String get feedEditComment;

  /// No description provided for @feedDeleteComment.
  ///
  /// In vi, this message translates to:
  /// **'Xóa bình luận'**
  String get feedDeleteComment;

  /// No description provided for @feedAuthorBadge.
  ///
  /// In vi, this message translates to:
  /// **'Tác giả'**
  String get feedAuthorBadge;

  /// No description provided for @feedWriteCommentHint.
  ///
  /// In vi, this message translates to:
  /// **'Viết bình luận...'**
  String get feedWriteCommentHint;

  /// No description provided for @feedReplyToAuthor.
  ///
  /// In vi, this message translates to:
  /// **'Trả lời {authorName}'**
  String feedReplyToAuthor(String authorName);

  /// No description provided for @feedEditedMark.
  ///
  /// In vi, this message translates to:
  /// **'· Đã sửa'**
  String get feedEditedMark;

  /// No description provided for @feedReplyBtn.
  ///
  /// In vi, this message translates to:
  /// **'Trả lời'**
  String get feedReplyBtn;

  /// No description provided for @feedCommentsCount.
  ///
  /// In vi, this message translates to:
  /// **'Bình luận ({total})'**
  String feedCommentsCount(int total);

  /// No description provided for @feedNoCommentsYet.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có bình luận nào. Hãy là người đầu tiên!'**
  String get feedNoCommentsYet;

  /// No description provided for @feedPostOptions.
  ///
  /// In vi, this message translates to:
  /// **'Tùy chọn bài viết'**
  String get feedPostOptions;

  /// No description provided for @feedNotLoggedIn.
  ///
  /// In vi, this message translates to:
  /// **'Chưa đăng nhập'**
  String get feedNotLoggedIn;

  /// No description provided for @feedDeletePostSuccess.
  ///
  /// In vi, this message translates to:
  /// **'Xóa bài thành công'**
  String get feedDeletePostSuccess;

  /// No description provided for @feedNoPublicPosts.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có bài viết công khai'**
  String get feedNoPublicPosts;

  /// No description provided for @feedSeeMore.
  ///
  /// In vi, this message translates to:
  /// **'Xem thêm'**
  String get feedSeeMore;

  /// No description provided for @feedNewsFeedTitle.
  ///
  /// In vi, this message translates to:
  /// **'Bảng tin'**
  String get feedNewsFeedTitle;

  /// No description provided for @errorGeneric.
  ///
  /// In vi, this message translates to:
  /// **'Đã có lỗi xảy ra, vui lòng thử lại sau.'**
  String get errorGeneric;

  /// No description provided for @errorIncorrectOldPassword.
  ///
  /// In vi, this message translates to:
  /// **'Sai mật khẩu cũ'**
  String get errorIncorrectOldPassword;

  /// No description provided for @errorMissingPasswords.
  ///
  /// In vi, this message translates to:
  /// **'Vui lòng nhập đầy đủ mật khẩu cũ và mới'**
  String get errorMissingPasswords;

  /// No description provided for @errorPasswordTooShort.
  ///
  /// In vi, this message translates to:
  /// **'Mật khẩu mới phải có ít nhất 6 ký tự'**
  String get errorPasswordTooShort;

  /// No description provided for @errorPasswordComplexity.
  ///
  /// In vi, this message translates to:
  /// **'Mật khẩu mới phải bao gồm chữ hoa, chữ thường và số.'**
  String get errorPasswordComplexity;

  /// No description provided for @chatMessageRevoked.
  ///
  /// In vi, this message translates to:
  /// **'Tin nhắn đã bị thu hồi'**
  String get chatMessageRevoked;

  /// No description provided for @chatMessageImage.
  ///
  /// In vi, this message translates to:
  /// **'[Hình ảnh]'**
  String get chatMessageImage;

  /// No description provided for @chatMessageFile.
  ///
  /// In vi, this message translates to:
  /// **'[Tệp đính kèm]'**
  String get chatMessageFile;

  /// No description provided for @chatNoMessagesYet.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có tin nhắn nào.'**
  String get chatNoMessagesYet;

  /// No description provided for @chatMediaPermissionRequired.
  ///
  /// In vi, this message translates to:
  /// **'Vui lòng cấp quyền truy cập ảnh trong cài đặt.'**
  String get chatMediaPermissionRequired;

  /// No description provided for @chatMediaNoImages.
  ///
  /// In vi, this message translates to:
  /// **'Không có ảnh nào.'**
  String get chatMediaNoImages;

  /// No description provided for @chatInputReplying.
  ///
  /// In vi, this message translates to:
  /// **'Đang trả lời'**
  String get chatInputReplying;

  /// No description provided for @chatInputDefaultMessage.
  ///
  /// In vi, this message translates to:
  /// **'Tin nhắn'**
  String get chatInputDefaultMessage;

  /// No description provided for @chatInputSendImageError.
  ///
  /// In vi, this message translates to:
  /// **'Không thể gửi ảnh: {error}'**
  String chatInputSendImageError(String error);

  /// No description provided for @chatActionReply.
  ///
  /// In vi, this message translates to:
  /// **'Trả lời'**
  String get chatActionReply;

  /// No description provided for @chatActionRevoke.
  ///
  /// In vi, this message translates to:
  /// **'Thu hồi'**
  String get chatActionRevoke;

  /// No description provided for @chatActionCopy.
  ///
  /// In vi, this message translates to:
  /// **'Sao chép'**
  String get chatActionCopy;

  /// No description provided for @chatMsgCopied.
  ///
  /// In vi, this message translates to:
  /// **'Đã sao chép tin nhắn'**
  String get chatMsgCopied;

  /// No description provided for @chatRevokeTitle.
  ///
  /// In vi, this message translates to:
  /// **'Thu hồi tin nhắn'**
  String get chatRevokeTitle;

  /// No description provided for @chatRevokeConfirmMsg.
  ///
  /// In vi, this message translates to:
  /// **'Bạn có chắc chắn muốn thu hồi tin nhắn này không? Hành động này không thể hoàn tác.'**
  String get chatRevokeConfirmMsg;

  /// No description provided for @chatMsgRevokedSuccess.
  ///
  /// In vi, this message translates to:
  /// **'Đã thu hồi tin nhắn'**
  String get chatMsgRevokedSuccess;

  /// No description provided for @chatReplied.
  ///
  /// In vi, this message translates to:
  /// **'Đã trả lời'**
  String get chatReplied;

  /// No description provided for @chatMaxImageLimit.
  ///
  /// In vi, this message translates to:
  /// **'Bạn chỉ có thể chọn tối đa 10 ảnh'**
  String get chatMaxImageLimit;

  /// No description provided for @chatSearchContactHint.
  ///
  /// In vi, this message translates to:
  /// **'Tìm kiếm người liên hệ...'**
  String get chatSearchContactHint;

  /// No description provided for @chatNoConversationsYet.
  ///
  /// In vi, this message translates to:
  /// **'Chưa có cuộc trò chuyện nào.'**
  String get chatNoConversationsYet;

  /// No description provided for @chatSelectContact.
  ///
  /// In vi, this message translates to:
  /// **'Chọn người liên hệ'**
  String get chatSelectContact;

  /// No description provided for @chatNoContacts.
  ///
  /// In vi, this message translates to:
  /// **'Không có liên hệ nào.'**
  String get chatNoContacts;

  /// No description provided for @chatStatusOnline.
  ///
  /// In vi, this message translates to:
  /// **'Trực tuyến'**
  String get chatStatusOnline;

  /// No description provided for @chatStatusActive.
  ///
  /// In vi, this message translates to:
  /// **'Đang hoạt động'**
  String get chatStatusActive;

  /// No description provided for @chatStatusOffline.
  ///
  /// In vi, this message translates to:
  /// **'Không hoạt động'**
  String get chatStatusOffline;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
