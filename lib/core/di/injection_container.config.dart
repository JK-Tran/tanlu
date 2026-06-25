// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:cloud_functions/cloud_functions.dart' as _i809;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_messaging/firebase_messaging.dart' as _i892;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/app/data/repositories/app_repository_impl.dart' as _i111;
import '../../features/app/data/sources/app_api_service.dart' as _i512;
import '../../features/app/domain/repositories/app_repository.dart' as _i456;
import '../../features/app/presentation/bloc/app_bloc.dart' as _i120;
import '../../features/attendance/data/mapper/attendance_data_mapper.dart'
    as _i532;
import '../../features/attendance/data/mapper/attendance_session_data_mapper.dart'
    as _i163;
import '../../features/attendance/data/mapper/leave_request_data_mapper.dart'
    as _i536;
import '../../features/attendance/data/repositories/attendance_repository_impl.dart'
    as _i719;
import '../../features/attendance/data/sources/attendance_firebase_source.dart'
    as _i209;
import '../../features/attendance/domain/repositories/attendance_repository.dart'
    as _i477;
import '../../features/attendance/domain/usecases/get_daily_attendance_use_case.dart'
    as _i742;
import '../../features/attendance/domain/usecases/get_student_history_use_case.dart'
    as _i661;
import '../../features/attendance/domain/usecases/stream_leave_requests_use_case.dart'
    as _i141;
import '../../features/attendance/domain/usecases/submit_complete_check_out_use_case.dart'
    as _i284;
import '../../features/attendance/domain/usecases/submit_daily_attendance_use_case.dart'
    as _i782;
import '../../features/attendance/domain/usecases/submit_leave_decision_use_case.dart'
    as _i448;
import '../../features/attendance/domain/usecases/update_daily_attendance_use_case.dart'
    as _i336;
import '../../features/attendance/presentation/bloc/attendance_bloc.dart'
    as _i700;
import '../../features/auth/data/mapper/user_data_mapper.dart' as _i702;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/data/sources/auth_firebase_source.dart' as _i412;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/login_use_case.dart' as _i37;
import '../../features/auth/domain/usecases/logout_use_case.dart' as _i711;
import '../../features/auth/domain/usecases/save_current_user_use_case.dart'
    as _i546;
import '../../features/auth/presentation/login/bloc/login_bloc.dart' as _i204;
import '../../features/chat/data/mapper/contact_data_mapper.dart' as _i203;
import '../../features/chat/data/mapper/conversation_data_mapper.dart' as _i808;
import '../../features/chat/data/mapper/friend_request_data_mapper.dart'
    as _i471;
import '../../features/chat/data/mapper/friendship_data_mapper.dart' as _i1058;
import '../../features/chat/data/mapper/member_data_mapper.dart' as _i666;
import '../../features/chat/data/mapper/message_data_mapper.dart' as _i1071;
import '../../features/chat/data/repositories/chat_repository_impl.dart'
    as _i504;
import '../../features/chat/data/sources/chat_firestore_source.dart' as _i693;
import '../../features/chat/data/sources/chat_storage_source.dart' as _i1024;
import '../../features/chat/domain/repositories/chat_repository.dart' as _i420;
import '../../features/chat/domain/usecases/create_conversation_use_case.dart'
    as _i441;
import '../../features/chat/domain/usecases/get_contacts_use_case.dart'
    as _i444;
import '../../features/chat/domain/usecases/get_friends_use_case.dart' as _i860;
import '../../features/chat/domain/usecases/mark_messages_as_read_use_case.dart'
    as _i29;
import '../../features/chat/domain/usecases/stream_conversations_use_case.dart'
    as _i796;
import '../../features/chat/domain/usecases/stream_friend_requests_use_case.dart'
    as _i630;
import '../../features/chat/domain/usecases/stream_messages_use_case.dart'
    as _i795;
import '../../features/chat/domain/usecases/submit_friend_decision_use_case.dart'
    as _i892;
import '../../features/chat/domain/usecases/submit_friend_request_use_case.dart'
    as _i408;
import '../../features/chat/domain/usecases/submit_message_use_case.dart'
    as _i396;
import '../../features/chat/presentation/bloc/chat_bloc.dart' as _i65;
import '../../features/feed/data/mapper/comment_data_mapper.dart' as _i774;
import '../../features/feed/data/mapper/feed_data_mapper.dart' as _i176;
import '../../features/feed/data/mapper/feed_like_data_mapper.dart' as _i82;
import '../../features/feed/data/repositories/feed_repository_impl.dart'
    as _i452;
import '../../features/feed/data/sources/feed_firestore_source.dart' as _i546;
import '../../features/feed/data/sources/feed_storage_source.dart' as _i872;
import '../../features/feed/domain/repositories/feed_repository.dart' as _i430;
import '../../features/feed/domain/usecases/delete_feed_comment_use_case.dart'
    as _i609;
import '../../features/feed/domain/usecases/delete_feed_use_case.dart' as _i404;
import '../../features/feed/domain/usecases/get_class_feeds_use_case.dart'
    as _i866;
import '../../features/feed/domain/usecases/get_explore_feeds_use_case.dart'
    as _i947;
import '../../features/feed/domain/usecases/get_feed_likes_use_case.dart'
    as _i92;
import '../../features/feed/domain/usecases/get_feed_use_case.dart' as _i1007;
import '../../features/feed/domain/usecases/stream_feed_comments_use_case.dart'
    as _i710;
import '../../features/feed/domain/usecases/submit_feed_comment_like_use_case.dart'
    as _i15;
import '../../features/feed/domain/usecases/submit_feed_comment_use_case.dart'
    as _i491;
import '../../features/feed/domain/usecases/submit_feed_like_use_case.dart'
    as _i187;
import '../../features/feed/domain/usecases/submit_feed_use_case.dart' as _i822;
import '../../features/feed/domain/usecases/update_feed_comment_use_case.dart'
    as _i160;
import '../../features/feed/domain/usecases/update_feed_use_case.dart' as _i659;
import '../../features/feed/presentation/create_feed/bloc/create_feed_bloc.dart'
    as _i967;
import '../../features/feed/presentation/feed_detail/bloc/feed_detail_bloc.dart'
    as _i60;
import '../../features/feed/presentation/feed_page/bloc/feed_bloc.dart'
    as _i242;
import '../../features/notification/data/mapper/device_token_data_mapper.dart'
    as _i1002;
import '../../features/notification/data/repositories/notification_repository_impl.dart'
    as _i407;
import '../../features/notification/data/services/push_notification_handler.dart'
    as _i212;
import '../../features/notification/data/sources/notification_firebase_source.dart'
    as _i780;
import '../../features/notification/domain/repositories/notification_repository.dart'
    as _i630;
import '../../features/notification/domain/usecases/register_device_token_use_case.dart'
    as _i337;
import '../../features/notification/domain/usecases/unregister_device_token_use_case.dart'
    as _i946;
import '../../features/overview/presentation/bloc/overview_bloc.dart' as _i447;
import '../../features/person/data/sources/person_firestore_source.dart'
    as _i42;
import '../../features/person/domain/usecases/get_class_name_use_case.dart'
    as _i805;
import '../../features/student/data/mapper/student_data_mapper.dart' as _i67;
import '../../features/student/data/repositories/student_repository_impl.dart'
    as _i687;
import '../../features/student/data/sources/student_firebase_source.dart'
    as _i489;
import '../../features/student/domain/repositories/student_repository.dart'
    as _i215;
import '../../features/student/domain/usecases/get_all_student_by_class_id.dart'
    as _i151;
import '../../features/student/domain/usecases/get_student_class_stats_use_case.dart'
    as _i230;
import '../../features/student/presentation/bloc/student_bloc.dart' as _i510;
import '../../shared/helper/app_info.dart' as _i80;
import '../../shared/helper/device_info.dart' as _i303;
import '../../shared/network/api_client.dart' as _i757;
import '../../shared/network/dio_client.dart' as _i833;
import '../../shared/services/firebase/fcm_messaging.dart' as _i907;
import '../../shared/services/firebase/local_notification_service.dart'
    as _i809;
import '../../shared/services/firebase/push/chat_incoming_banner_service.dart'
    as _i916;
import '../../shared/services/firebase/push/chat_push_opener.dart' as _i963;
import '../../shared/services/firebase/push/in_app_push_banner_controller.dart'
    as _i35;
import '../../shared/services/google_auth_service.dart' as _i175;
import '../../shared/services/local_storage/app_preferences.dart' as _i531;
import '../../shared/services/notification/notification_preferences.dart'
    as _i796;
import '../../shared/services/socket_io/socket.dart' as _i46;
import '../base/default_bloc.dart' as _i841;
import '../utils/shared_prefs_helper.dart' as _i964;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i841.DefaultBloc>(() => _i841.DefaultBloc());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i532.AttendanceDataMapper>(() => _i532.AttendanceDataMapper());
    gh.factory<_i163.AttendanceSessionDataMapper>(
      () => _i163.AttendanceSessionDataMapper(),
    );
    gh.factory<_i536.LeaveRequestDataMapper>(
      () => _i536.LeaveRequestDataMapper(),
    );
    gh.factory<_i702.UserDataMapper>(() => _i702.UserDataMapper());
    gh.factory<_i203.ContactDataMapper>(() => _i203.ContactDataMapper());
    gh.factory<_i808.ConversationDataMapper>(
      () => _i808.ConversationDataMapper(),
    );
    gh.factory<_i1058.FriendshipDataMapper>(
      () => _i1058.FriendshipDataMapper(),
    );
    gh.factory<_i471.FriendRequestDataMapper>(
      () => _i471.FriendRequestDataMapper(),
    );
    gh.factory<_i666.MemberDataMapper>(() => _i666.MemberDataMapper());
    gh.factory<_i1071.MessageDataMapper>(() => _i1071.MessageDataMapper());
    gh.factory<_i774.CommentDataMapper>(() => _i774.CommentDataMapper());
    gh.factory<_i176.FeedDataMapper>(() => _i176.FeedDataMapper());
    gh.factory<_i82.FeedLikeDataMapper>(() => _i82.FeedLikeDataMapper());
    gh.factory<_i1002.DeviceTokenDataMapper>(
      () => _i1002.DeviceTokenDataMapper(),
    );
    gh.factory<_i67.StudentDataMapper>(() => _i67.StudentDataMapper());
    gh.lazySingleton<_i59.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(() => registerModule.firestore);
    gh.lazySingleton<_i457.FirebaseStorage>(
      () => registerModule.firebaseStorage,
    );
    gh.lazySingleton<_i809.FirebaseFunctions>(
      () => registerModule.firebaseFunctions,
    );
    gh.lazySingleton<_i892.FirebaseMessaging>(
      () => registerModule.firebaseMessaging,
    );
    gh.lazySingleton<_i303.DeviceInfo>(() => registerModule.deviceInfo());
    gh.lazySingleton<_i80.AppInfo>(() => _i80.AppInfo());
    gh.lazySingleton<_i963.ChatPushOpener>(() => _i963.ChatPushOpener());
    gh.lazySingleton<_i35.InAppPushBannerController>(
      () => _i35.InAppPushBannerController(),
    );
    gh.lazySingleton<_i1024.ChatStorageSource>(
      () => _i1024.ChatStorageSource(gh<_i457.FirebaseStorage>()),
    );
    gh.lazySingleton<_i872.FeedStorageSource>(
      () => _i872.FeedStorageSource(gh<_i457.FirebaseStorage>()),
    );
    gh.lazySingleton<_i964.SharedPrefsHelper>(
      () => _i964.SharedPrefsHelper(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i46.SocketService>(
      () => _i46.SocketService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i531.AppPreferences>(
      () => _i512.AppApiService(gh<_i964.SharedPrefsHelper>()),
    );
    gh.lazySingleton<_i796.NotificationPreferences>(
      () => _i796.NotificationPreferences(gh<_i964.SharedPrefsHelper>()),
    );
    gh.lazySingleton<_i456.AppRepository>(
      () => _i111.AppRepositoryImpl(gh<_i531.AppPreferences>()),
    );
    gh.lazySingleton<_i916.ChatIncomingBannerService>(
      () => _i916.ChatIncomingBannerService(
        gh<_i35.InAppPushBannerController>(),
        gh<_i796.NotificationPreferences>(),
      ),
    );
    gh.lazySingleton<_i809.LocalNotificationService>(
      () => _i809.LocalNotificationService(gh<_i796.NotificationPreferences>()),
    );
    gh.lazySingleton<_i209.AttendanceFirebaseSource>(
      () => _i209.AttendanceFirebaseSource(gh<_i974.FirebaseFirestore>()),
    );
    gh.lazySingleton<_i693.ChatFirestoreSource>(
      () => _i693.ChatFirestoreSource(gh<_i974.FirebaseFirestore>()),
    );
    gh.lazySingleton<_i546.FeedFirestoreSource>(
      () => _i546.FeedFirestoreSource(gh<_i974.FirebaseFirestore>()),
    );
    gh.lazySingleton<_i780.NotificationFirebaseSource>(
      () => _i780.NotificationFirebaseSource(gh<_i974.FirebaseFirestore>()),
    );
    gh.lazySingleton<_i42.PersonFirestoreSource>(
      () => _i42.PersonFirestoreSource(gh<_i974.FirebaseFirestore>()),
    );
    gh.lazySingleton<_i489.StudentFirebaseSource>(
      () => _i489.StudentFirebaseSource(gh<_i974.FirebaseFirestore>()),
    );
    gh.lazySingleton<_i630.NotificationRepository>(
      () => _i407.NotificationRepositoryImpl(
        gh<_i531.AppPreferences>(),
        gh<_i780.NotificationFirebaseSource>(),
        gh<_i1002.DeviceTokenDataMapper>(),
      ),
    );
    gh.lazySingleton<_i833.DioClient>(
      () => registerModule.dioClient(gh<_i964.SharedPrefsHelper>()),
    );
    gh.lazySingleton<_i175.GoogleAuthService>(
      () => _i175.GoogleAuthService(gh<_i59.FirebaseAuth>()),
    );
    gh.lazySingleton<_i757.ApiClient>(
      () => _i757.ApiClient(gh<_i833.DioClient>()),
    );
    gh.lazySingleton<_i215.StudentRepository>(
      () => _i687.StudentRepositoryImpl(
        gh<_i489.StudentFirebaseSource>(),
        gh<_i67.StudentDataMapper>(),
      ),
    );
    gh.lazySingleton<_i412.AuthFirebaseSource>(
      () => _i412.AuthFirebaseSource(
        gh<_i59.FirebaseAuth>(),
        gh<_i974.FirebaseFirestore>(),
        gh<_i809.FirebaseFunctions>(),
        gh<_i175.GoogleAuthService>(),
      ),
    );
    gh.lazySingleton<_i212.PushNotificationHandler>(
      () => _i212.PushNotificationHandler(
        gh<_i809.LocalNotificationService>(),
        gh<_i796.NotificationPreferences>(),
      ),
    );
    gh.lazySingleton<_i477.AttendanceRepository>(
      () => _i719.AttendanceRepositoryImpl(
        gh<_i209.AttendanceFirebaseSource>(),
        gh<_i215.StudentRepository>(),
        gh<_i532.AttendanceDataMapper>(),
        gh<_i163.AttendanceSessionDataMapper>(),
        gh<_i536.LeaveRequestDataMapper>(),
      ),
    );
    gh.factory<_i151.GetAllStudentByClassIdUseCase>(
      () => _i151.GetAllStudentByClassIdUseCase(gh<_i215.StudentRepository>()),
    );
    gh.factory<_i805.GetClassNameUseCase>(
      () => _i805.GetClassNameUseCase(gh<_i42.PersonFirestoreSource>()),
    );
    gh.factory<_i337.RegisterDeviceTokenUseCase>(
      () =>
          _i337.RegisterDeviceTokenUseCase(gh<_i630.NotificationRepository>()),
    );
    gh.factory<_i946.UnregisterDeviceTokenUseCase>(
      () => _i946.UnregisterDeviceTokenUseCase(
        gh<_i630.NotificationRepository>(),
      ),
    );
    gh.lazySingleton<_i430.FeedRepository>(
      () => _i452.FeedRepositoryImpl(
        gh<_i546.FeedFirestoreSource>(),
        gh<_i872.FeedStorageSource>(),
        gh<_i42.PersonFirestoreSource>(),
        gh<_i176.FeedDataMapper>(),
        gh<_i774.CommentDataMapper>(),
        gh<_i82.FeedLikeDataMapper>(),
      ),
    );
    gh.lazySingleton<_i907.FcmMessaging>(
      () => _i907.FcmMessaging(
        gh<_i892.FirebaseMessaging>(),
        gh<_i212.PushNotificationHandler>(),
        gh<_i796.NotificationPreferences>(),
      ),
    );
    gh.factory<_i230.GetStudentClassStatsUseCase>(
      () => _i230.GetStudentClassStatsUseCase(gh<_i215.StudentRepository>()),
    );
    gh.factory<_i510.StudentBloc>(
      () => _i510.StudentBloc(
        gh<_i151.GetAllStudentByClassIdUseCase>(),
        gh<_i230.GetStudentClassStatsUseCase>(),
      ),
    );
    gh.lazySingleton<_i420.ChatRepository>(
      () => _i504.ChatRepositoryImpl(
        gh<_i693.ChatFirestoreSource>(),
        gh<_i1024.ChatStorageSource>(),
        gh<_i203.ContactDataMapper>(),
        gh<_i808.ConversationDataMapper>(),
        gh<_i1071.MessageDataMapper>(),
        gh<_i471.FriendRequestDataMapper>(),
      ),
    );
    gh.factory<_i742.GetDailyAttendanceUseCase>(
      () => _i742.GetDailyAttendanceUseCase(gh<_i477.AttendanceRepository>()),
    );
    gh.factory<_i661.GetStudentHistoryUseCase>(
      () => _i661.GetStudentHistoryUseCase(gh<_i477.AttendanceRepository>()),
    );
    gh.factory<_i141.StreamLeaveRequestsUseCase>(
      () => _i141.StreamLeaveRequestsUseCase(gh<_i477.AttendanceRepository>()),
    );
    gh.factory<_i284.SubmitCompleteCheckOutUseCase>(
      () =>
          _i284.SubmitCompleteCheckOutUseCase(gh<_i477.AttendanceRepository>()),
    );
    gh.factory<_i782.SubmitDailyAttendanceUseCase>(
      () =>
          _i782.SubmitDailyAttendanceUseCase(gh<_i477.AttendanceRepository>()),
    );
    gh.factory<_i448.SubmitLeaveDecisionUseCase>(
      () => _i448.SubmitLeaveDecisionUseCase(gh<_i477.AttendanceRepository>()),
    );
    gh.factory<_i336.UpdateDailyAttendanceUseCase>(
      () =>
          _i336.UpdateDailyAttendanceUseCase(gh<_i477.AttendanceRepository>()),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i531.AppPreferences>(),
        gh<_i702.UserDataMapper>(),
        gh<_i412.AuthFirebaseSource>(),
      ),
    );
    gh.factory<_i609.DeleteFeedCommentUseCase>(
      () => _i609.DeleteFeedCommentUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i404.DeleteFeedUseCase>(
      () => _i404.DeleteFeedUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i866.GetClassFeedsUseCase>(
      () => _i866.GetClassFeedsUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i947.GetExploreFeedsUseCase>(
      () => _i947.GetExploreFeedsUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i92.GetFeedLikesUseCase>(
      () => _i92.GetFeedLikesUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i1007.GetFeedUseCase>(
      () => _i1007.GetFeedUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i710.StreamFeedCommentsUseCase>(
      () => _i710.StreamFeedCommentsUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i15.SubmitFeedCommentLikeUseCase>(
      () => _i15.SubmitFeedCommentLikeUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i491.SubmitFeedCommentUseCase>(
      () => _i491.SubmitFeedCommentUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i187.SubmitFeedLikeUseCase>(
      () => _i187.SubmitFeedLikeUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i822.SubmitFeedUseCase>(
      () => _i822.SubmitFeedUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i160.UpdateFeedCommentUseCase>(
      () => _i160.UpdateFeedCommentUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i659.UpdateFeedUseCase>(
      () => _i659.UpdateFeedUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i441.CreateConversationUseCase>(
      () => _i441.CreateConversationUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i444.GetContactsUseCase>(
      () => _i444.GetContactsUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i860.GetFriendsUseCase>(
      () => _i860.GetFriendsUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i29.MarkMessagesAsReadUseCase>(
      () => _i29.MarkMessagesAsReadUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i796.StreamConversationsUseCase>(
      () => _i796.StreamConversationsUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i630.StreamFriendRequestsUseCase>(
      () => _i630.StreamFriendRequestsUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i795.StreamMessagesUseCase>(
      () => _i795.StreamMessagesUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i892.SubmitFriendDecisionUseCase>(
      () => _i892.SubmitFriendDecisionUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i408.SubmitFriendRequestUseCase>(
      () => _i408.SubmitFriendRequestUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i396.SubmitMessageUseCase>(
      () => _i396.SubmitMessageUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i37.LoginUseCase>(
      () => _i37.LoginUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i711.LogoutUseCase>(
      () => _i711.LogoutUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i546.SaveCurrentUserUseCase>(
      () => _i546.SaveCurrentUserUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i700.AttendanceBloc>(
      () => _i700.AttendanceBloc(
        gh<_i742.GetDailyAttendanceUseCase>(),
        gh<_i782.SubmitDailyAttendanceUseCase>(),
        gh<_i336.UpdateDailyAttendanceUseCase>(),
        gh<_i284.SubmitCompleteCheckOutUseCase>(),
        gh<_i448.SubmitLeaveDecisionUseCase>(),
        gh<_i141.StreamLeaveRequestsUseCase>(),
      ),
    );
    gh.factory<_i447.OverviewBloc>(
      () => _i447.OverviewBloc(
        gh<_i141.StreamLeaveRequestsUseCase>(),
        gh<_i151.GetAllStudentByClassIdUseCase>(),
        gh<_i742.GetDailyAttendanceUseCase>(),
      ),
    );
    gh.lazySingleton<_i65.ChatBloc>(
      () => _i65.ChatBloc(
        gh<_i444.GetContactsUseCase>(),
        gh<_i796.StreamConversationsUseCase>(),
        gh<_i795.StreamMessagesUseCase>(),
        gh<_i630.StreamFriendRequestsUseCase>(),
        gh<_i441.CreateConversationUseCase>(),
        gh<_i396.SubmitMessageUseCase>(),
        gh<_i29.MarkMessagesAsReadUseCase>(),
        gh<_i408.SubmitFriendRequestUseCase>(),
        gh<_i892.SubmitFriendDecisionUseCase>(),
        gh<_i420.ChatRepository>(),
        gh<_i916.ChatIncomingBannerService>(),
      ),
    );
    gh.factory<_i242.FeedBloc>(
      () => _i242.FeedBloc(
        gh<_i866.GetClassFeedsUseCase>(),
        gh<_i947.GetExploreFeedsUseCase>(),
        gh<_i187.SubmitFeedLikeUseCase>(),
        gh<_i430.FeedRepository>(),
      ),
    );
    gh.factory<_i204.LoginBloc>(() => _i204.LoginBloc(gh<_i37.LoginUseCase>()));
    gh.lazySingleton<_i120.AppBloc>(
      () => _i120.AppBloc(
        gh<_i787.AuthRepository>(),
        gh<_i531.AppPreferences>(),
        gh<_i907.FcmMessaging>(),
        gh<_i337.RegisterDeviceTokenUseCase>(),
        gh<_i946.UnregisterDeviceTokenUseCase>(),
        gh<_i65.ChatBloc>(),
        gh<_i796.NotificationPreferences>(),
      ),
    );
    gh.factory<_i967.CreateFeedBloc>(
      () => _i967.CreateFeedBloc(
        gh<_i822.SubmitFeedUseCase>(),
        gh<_i805.GetClassNameUseCase>(),
      ),
    );
    gh.factory<_i60.FeedDetailBloc>(
      () => _i60.FeedDetailBloc(
        gh<_i430.FeedRepository>(),
        gh<_i187.SubmitFeedLikeUseCase>(),
        gh<_i710.StreamFeedCommentsUseCase>(),
        gh<_i491.SubmitFeedCommentUseCase>(),
        gh<_i15.SubmitFeedCommentLikeUseCase>(),
        gh<_i160.UpdateFeedCommentUseCase>(),
        gh<_i609.DeleteFeedCommentUseCase>(),
        gh<_i404.DeleteFeedUseCase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
