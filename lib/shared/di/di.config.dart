// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../core/base/default_bloc.dart' as _i192;
import '../../features/app/data/sources/app_preferences_service.dart' as _i527;
import '../../features/app/presentation/bloc/app_bloc.dart' as _i120;
import '../../features/app/presentation/bloc/app_locale_cubit.dart' as _i1069;
import '../../features/attendance/data/mapper/attendance_record_data_mapper.dart'
    as _i616;
import '../../features/attendance/data/mapper/attendance_session_data_mapper.dart'
    as _i163;
import '../../features/attendance/data/mapper/attendance_student_data_mapper.dart'
    as _i530;
import '../../features/attendance/data/mapper/attendance_summary_data_mapper.dart'
    as _i882;
import '../../features/attendance/data/mapper/daily_attendance_result_data_mapper.dart'
    as _i840;
import '../../features/attendance/data/mapper/leave_request_data_mapper.dart'
    as _i536;
import '../../features/attendance/data/mapper/student_attendance_data_mapper.dart'
    as _i774;
import '../../features/attendance/data/repositories/attendance_repository_impl.dart'
    as _i719;
import '../../features/attendance/data/sources/attendance_api_service.dart'
    as _i799;
import '../../features/attendance/domain/repositories/attendance_repository.dart'
    as _i477;
import '../../features/attendance/domain/usecases/get_daily_attendance_use_case.dart'
    as _i742;
import '../../features/attendance/domain/usecases/get_leave_requests_use_case.dart'
    as _i533;
import '../../features/attendance/domain/usecases/submit_check_out_use_case.dart'
    as _i149;
import '../../features/attendance/domain/usecases/submit_complete_check_out_use_case.dart'
    as _i284;
import '../../features/attendance/domain/usecases/submit_daily_attendance_use_case.dart'
    as _i782;
import '../../features/attendance/domain/usecases/submit_leave_decision_use_case.dart'
    as _i448;
import '../../features/attendance/presentation/bloc/attendance_bloc.dart'
    as _i700;
import '../../features/auth/data/mapper/token_data_mapper.dart' as _i919;
import '../../features/auth/data/mapper/user_data_mapper.dart' as _i702;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/data/sources/auth_api_service.dart' as _i587;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/change_password_use_case.dart'
    as _i571;
import '../../features/auth/domain/usecases/get_initial_auth_data_use_case.dart'
    as _i146;
import '../../features/auth/domain/usecases/get_me_use_case.dart' as _i257;
import '../../features/auth/domain/usecases/login_use_case.dart' as _i37;
import '../../features/auth/domain/usecases/logout_use_case.dart' as _i711;
import '../../features/auth/domain/usecases/save_current_user_use_case.dart'
    as _i546;
import '../../features/auth/domain/usecases/update_fcm_token_use_case.dart'
    as _i860;
import '../../features/auth/presentation/login/bloc/login_bloc.dart' as _i204;
import '../../features/chat/data/mapper/chat_contact_mapper.dart' as _i719;
import '../../features/chat/data/mapper/chat_conversation_mapper.dart' as _i991;
import '../../features/chat/data/mapper/chat_message_mapper.dart' as _i416;
import '../../features/chat/data/mapper/chat_messages_response_mapper.dart'
    as _i178;
import '../../features/chat/data/mapper/chat_participant_mapper.dart' as _i816;
import '../../features/chat/data/mapper/chat_reaction_mapper.dart' as _i968;
import '../../features/chat/data/mapper/pagination_cursor_mapper.dart' as _i574;
import '../../features/chat/data/repositories/chat_repository_impl.dart'
    as _i504;
import '../../features/chat/data/sources/chat_api_service.dart' as _i958;
import '../../features/chat/domain/repositories/chat_repository.dart' as _i420;
import '../../features/chat/domain/usecases/create_chat_usecase.dart' as _i599;
import '../../features/chat/domain/usecases/get_contacts_usecase.dart' as _i507;
import '../../features/chat/domain/usecases/get_conversations_usecase.dart'
    as _i194;
import '../../features/chat/domain/usecases/get_messages_usecase.dart' as _i325;
import '../../features/chat/domain/usecases/submit_message_usecase.dart'
    as _i782;
import '../../features/chat/domain/usecases/submit_reaction_usecase.dart'
    as _i976;
import '../../features/chat/domain/usecases/submit_revoke_usecase.dart'
    as _i314;
import '../../features/chat/domain/usecases/update_message_read_status_usecase.dart'
    as _i712;
import '../../features/chat/presentation/bloc/chat_bloc.dart' as _i65;
import '../../features/feed/data/mapper/feed_author_data_mapper.dart' as _i1071;
import '../../features/feed/data/mapper/feed_comment_data_mapper.dart' as _i70;
import '../../features/feed/data/mapper/feed_post_data_mapper.dart' as _i517;
import '../../features/feed/data/repositories/feed_repository_impl.dart'
    as _i452;
import '../../features/feed/data/sources/feed_api_service.dart' as _i226;
import '../../features/feed/domain/repositories/feed_repository.dart' as _i430;
import '../../features/feed/domain/usecases/create_feed_comment_use_case.dart'
    as _i218;
import '../../features/feed/domain/usecases/create_feed_post_use_case.dart'
    as _i436;
import '../../features/feed/domain/usecases/delete_feed_post_use_case.dart'
    as _i152;
import '../../features/feed/domain/usecases/get_feed_comments_use_case.dart'
    as _i644;
import '../../features/feed/domain/usecases/get_feed_post_use_case.dart'
    as _i76;
import '../../features/feed/domain/usecases/get_feed_posts_use_case.dart'
    as _i61;
import '../../features/feed/domain/usecases/toggle_comment_like_use_case.dart'
    as _i19;
import '../../features/feed/domain/usecases/toggle_post_like_use_case.dart'
    as _i864;
import '../../features/feed/domain/usecases/update_feed_post_use_case.dart'
    as _i138;
import '../../features/feed/presentation/create_feed/bloc/create_feed_bloc.dart'
    as _i967;
import '../../features/feed/presentation/feed_detail/bloc/feed_detail_bloc.dart'
    as _i60;
import '../../features/feed/presentation/feed_page/bloc/feed_bloc.dart'
    as _i242;
import '../../features/notification/data/mapper/notification_data_mapper.dart'
    as _i305;
import '../../features/notification/data/repositories/notification_repository_impl.dart'
    as _i407;
import '../../features/notification/data/sources/notification_api_service.dart'
    as _i1014;
import '../../features/notification/domain/repositories/notification_repository.dart'
    as _i630;
import '../../features/notification/domain/usecases/get_notifications_use_case.dart'
    as _i483;
import '../../features/notification/domain/usecases/mark_all_as_read_use_case.dart'
    as _i656;
import '../../features/notification/domain/usecases/mark_as_read_use_case.dart'
    as _i102;
import '../../features/notification/presentation/bloc/notification_bloc.dart'
    as _i29;
import '../../features/person/presentation/bloc/person_bloc.dart' as _i318;
import '../../features/student/data/mapper/class_info_data_mapper.dart'
    as _i367;
import '../../features/student/data/mapper/contact_data_mapper.dart' as _i426;
import '../../features/student/data/mapper/parent_data_mapper.dart' as _i906;
import '../../features/student/data/mapper/student_data_mapper.dart' as _i67;
import '../../features/student/data/repositories/student_repository_impl.dart'
    as _i687;
import '../../features/student/data/sources/student_api_service.dart' as _i374;
import '../../features/student/domain/repositories/student_repository.dart'
    as _i215;
import '../../features/student/domain/usecases/get_students_use_case.dart'
    as _i386;
import '../../features/student/presentation/bloc/student_bloc.dart' as _i510;
import '../helper/app_info.dart' as _i221;
import '../infrastructure/data/api/client/auth_app_server_api_client.dart'
    as _i695;
import '../infrastructure/data/api/client/none_auth_app_server_api_client.dart'
    as _i436;
import '../infrastructure/data/api/client/raw_api_client.dart' as _i756;
import '../infrastructure/data/api/client/refresh_token_api_client.dart'
    as _i585;
import '../infrastructure/data/api/mapper/base_error_response_mapper/json_array_error_response_mapper.dart'
    as _i878;
import '../infrastructure/data/api/mapper/base_error_response_mapper/json_object_error_response_mapper.dart'
    as _i579;
import '../infrastructure/data/api/mapper/base_error_response_mapper/line_error_response_mapper.dart'
    as _i239;
import '../infrastructure/data/api/mapper/pagination_data_mapper.dart' as _i181;
import '../infrastructure/data/api/middleware/access_token_interceptor.dart'
    as _i533;
import '../infrastructure/data/api/middleware/connectivity_interceptor.dart'
    as _i896;
import '../infrastructure/data/api/middleware/header_interceptor.dart' as _i34;
import '../infrastructure/data/api/middleware/refresh_token_interceptor.dart'
    as _i1045;
import '../services/local_storage/app_preferences.dart' as _i160;
import '../services/socket/global_web_socket_service.dart' as _i538;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i192.DefaultBloc>(() => _i192.DefaultBloc());
    gh.factory<_i163.AttendanceSessionDataMapper>(
      () => _i163.AttendanceSessionDataMapper(),
    );
    gh.factory<_i882.AttendanceSummaryDataMapper>(
      () => _i882.AttendanceSummaryDataMapper(),
    );
    gh.factory<_i774.StudentAttendanceDataMapper>(
      () => _i774.StudentAttendanceDataMapper(),
    );
    gh.factory<_i919.TokenDataMapper>(() => _i919.TokenDataMapper());
    gh.factory<_i702.UserDataMapper>(() => _i702.UserDataMapper());
    gh.factory<_i719.ChatContactMapper>(() => _i719.ChatContactMapper());
    gh.factory<_i816.ChatParticipantMapper>(
      () => _i816.ChatParticipantMapper(),
    );
    gh.factory<_i968.ChatReactionMapper>(() => _i968.ChatReactionMapper());
    gh.factory<_i1071.FeedAuthorDataMapper>(
      () => _i1071.FeedAuthorDataMapper(),
    );
    gh.factory<_i367.ClassInfoDataMapper>(() => _i367.ClassInfoDataMapper());
    gh.factory<_i426.ContactDataMapper>(() => _i426.ContactDataMapper());
    gh.factory<_i906.ParentDataMapper>(() => _i906.ParentDataMapper());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i878.JsonArrayErrorResponseMapper>(
      () => _i878.JsonArrayErrorResponseMapper(),
    );
    gh.factory<_i579.JsonObjectErrorResponseMapper>(
      () => _i579.JsonObjectErrorResponseMapper(),
    );
    gh.factory<_i239.LineErrorResponseMapper>(
      () => _i239.LineErrorResponseMapper(),
    );
    gh.factory<_i181.PaginationDataMapper>(() => _i181.PaginationDataMapper());
    gh.factory<_i896.ConnectivityInterceptor>(
      () => _i896.ConnectivityInterceptor(),
    );
    gh.factory<_i574.PaginationCursorMapper>(
      () => _i574.PaginationCursorMapper(),
    );
    gh.lazySingleton<_i305.NotificationDataMapper>(
      () => _i305.NotificationDataMapper(),
    );
    gh.lazySingleton<_i221.AppInfo>(() => _i221.AppInfo());
    gh.lazySingleton<_i756.RawApiClient>(() => _i756.RawApiClient());
    gh.lazySingleton<_i538.GlobalWebSocketService>(
      () => _i538.GlobalWebSocketService(),
    );
    gh.factory<_i67.StudentDataMapper>(
      () => _i67.StudentDataMapper(
        gh<_i367.ClassInfoDataMapper>(),
        gh<_i906.ParentDataMapper>(),
        gh<_i426.ContactDataMapper>(),
      ),
    );
    gh.factory<_i34.HeaderInterceptor>(
      () => _i34.HeaderInterceptor(gh<_i221.AppInfo>()),
    );
    gh.factory<_i536.LeaveRequestDataMapper>(
      () => _i536.LeaveRequestDataMapper(
        gh<_i67.StudentDataMapper>(),
        gh<_i367.ClassInfoDataMapper>(),
        gh<_i906.ParentDataMapper>(),
      ),
    );
    gh.factory<_i616.AttendanceRecordDataMapper>(
      () =>
          _i616.AttendanceRecordDataMapper(gh<_i536.LeaveRequestDataMapper>()),
    );
    gh.factory<_i530.AttendanceStudentDataMapper>(
      () =>
          _i530.AttendanceStudentDataMapper(gh<_i536.LeaveRequestDataMapper>()),
    );
    gh.lazySingleton<_i160.AppPreferences>(
      () => _i527.AppPreferencesService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i436.NoneAuthAppServerApiClient>(
      () => _i436.NoneAuthAppServerApiClient(gh<_i34.HeaderInterceptor>()),
    );
    gh.factory<_i70.FeedCommentDataMapper>(
      () => _i70.FeedCommentDataMapper(gh<_i1071.FeedAuthorDataMapper>()),
    );
    gh.factory<_i517.FeedPostDataMapper>(
      () => _i517.FeedPostDataMapper(gh<_i1071.FeedAuthorDataMapper>()),
    );
    gh.factory<_i416.ChatMessageMapper>(
      () => _i416.ChatMessageMapper(gh<_i968.ChatReactionMapper>()),
    );
    gh.factory<_i840.DailyAttendanceResultDataMapper>(
      () => _i840.DailyAttendanceResultDataMapper(
        gh<_i163.AttendanceSessionDataMapper>(),
        gh<_i882.AttendanceSummaryDataMapper>(),
        gh<_i530.AttendanceStudentDataMapper>(),
      ),
    );
    gh.factory<_i991.ChatConversationMapper>(
      () => _i991.ChatConversationMapper(gh<_i816.ChatParticipantMapper>()),
    );
    gh.factory<_i1045.RefreshTokenInterceptor>(
      () => _i1045.RefreshTokenInterceptor(
        gh<_i436.NoneAuthAppServerApiClient>(),
      ),
    );
    gh.lazySingleton<_i1069.AppLocaleCubit>(
      () => _i1069.AppLocaleCubit(gh<_i160.AppPreferences>()),
    );
    gh.factory<_i533.AccessTokenInterceptor>(
      () => _i533.AccessTokenInterceptor(gh<_i160.AppPreferences>()),
    );
    gh.factory<_i178.ChatMessagesResponseMapper>(
      () => _i178.ChatMessagesResponseMapper(
        gh<_i416.ChatMessageMapper>(),
        gh<_i574.PaginationCursorMapper>(),
      ),
    );
    gh.lazySingleton<_i695.AuthAppServerApiClient>(
      () => _i695.AuthAppServerApiClient(
        gh<_i34.HeaderInterceptor>(),
        gh<_i533.AccessTokenInterceptor>(),
        gh<_i1045.RefreshTokenInterceptor>(),
      ),
    );
    gh.lazySingleton<_i799.AttendanceApiService>(
      () => _i799.AttendanceApiService(gh<_i695.AuthAppServerApiClient>()),
    );
    gh.lazySingleton<_i958.ChatApiService>(
      () => _i958.ChatApiService(gh<_i695.AuthAppServerApiClient>()),
    );
    gh.lazySingleton<_i226.FeedApiService>(
      () => _i226.FeedApiService(gh<_i695.AuthAppServerApiClient>()),
    );
    gh.lazySingleton<_i1014.NotificationApiService>(
      () => _i1014.NotificationApiService(gh<_i695.AuthAppServerApiClient>()),
    );
    gh.lazySingleton<_i374.StudentApiService>(
      () => _i374.StudentApiService(gh<_i695.AuthAppServerApiClient>()),
    );
    gh.lazySingleton<_i477.AttendanceRepository>(
      () => _i719.AttendanceRepositoryImpl(
        gh<_i799.AttendanceApiService>(),
        gh<_i840.DailyAttendanceResultDataMapper>(),
        gh<_i536.LeaveRequestDataMapper>(),
      ),
    );
    gh.lazySingleton<_i585.RefreshTokenApiClient>(
      () => _i585.RefreshTokenApiClient(
        gh<_i34.HeaderInterceptor>(),
        gh<_i533.AccessTokenInterceptor>(),
      ),
    );
    gh.lazySingleton<_i430.FeedRepository>(
      () => _i452.FeedRepositoryImpl(
        gh<_i226.FeedApiService>(),
        gh<_i517.FeedPostDataMapper>(),
        gh<_i70.FeedCommentDataMapper>(),
      ),
    );
    gh.lazySingleton<_i587.AuthApiService>(
      () => _i587.AuthApiService(
        gh<_i436.NoneAuthAppServerApiClient>(),
        gh<_i695.AuthAppServerApiClient>(),
      ),
    );
    gh.lazySingleton<_i420.ChatRepository>(
      () => _i504.ChatRepositoryImpl(
        gh<_i958.ChatApiService>(),
        gh<_i991.ChatConversationMapper>(),
        gh<_i416.ChatMessageMapper>(),
        gh<_i719.ChatContactMapper>(),
        gh<_i178.ChatMessagesResponseMapper>(),
      ),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i160.AppPreferences>(),
        gh<_i702.UserDataMapper>(),
        gh<_i587.AuthApiService>(),
      ),
    );
    gh.factory<_i742.GetDailyAttendanceUseCase>(
      () => _i742.GetDailyAttendanceUseCase(gh<_i477.AttendanceRepository>()),
    );
    gh.factory<_i533.GetLeaveRequestsUseCase>(
      () => _i533.GetLeaveRequestsUseCase(gh<_i477.AttendanceRepository>()),
    );
    gh.factory<_i149.SubmitCheckOutUseCase>(
      () => _i149.SubmitCheckOutUseCase(gh<_i477.AttendanceRepository>()),
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
    gh.lazySingleton<_i630.NotificationRepository>(
      () => _i407.NotificationRepositoryImpl(
        gh<_i1014.NotificationApiService>(),
        gh<_i305.NotificationDataMapper>(),
      ),
    );
    gh.lazySingleton<_i215.StudentRepository>(
      () => _i687.StudentRepositoryImpl(
        gh<_i374.StudentApiService>(),
        gh<_i67.StudentDataMapper>(),
      ),
    );
    gh.lazySingleton<_i700.AttendanceBloc>(
      () => _i700.AttendanceBloc(
        gh<_i742.GetDailyAttendanceUseCase>(),
        gh<_i533.GetLeaveRequestsUseCase>(),
        gh<_i782.SubmitDailyAttendanceUseCase>(),
        gh<_i149.SubmitCheckOutUseCase>(),
        gh<_i284.SubmitCompleteCheckOutUseCase>(),
        gh<_i448.SubmitLeaveDecisionUseCase>(),
      ),
    );
    gh.factory<_i218.CreateFeedCommentUseCase>(
      () => _i218.CreateFeedCommentUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i436.CreateFeedPostUseCase>(
      () => _i436.CreateFeedPostUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i152.DeleteFeedPostUseCase>(
      () => _i152.DeleteFeedPostUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i644.GetFeedCommentsUseCase>(
      () => _i644.GetFeedCommentsUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i61.GetFeedPostsUseCase>(
      () => _i61.GetFeedPostsUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i76.GetFeedPostUseCase>(
      () => _i76.GetFeedPostUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i19.ToggleCommentLikeUseCase>(
      () => _i19.ToggleCommentLikeUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i864.TogglePostLikeUseCase>(
      () => _i864.TogglePostLikeUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i138.UpdateFeedPostUseCase>(
      () => _i138.UpdateFeedPostUseCase(gh<_i430.FeedRepository>()),
    );
    gh.factory<_i242.FeedBloc>(
      () => _i242.FeedBloc(
        gh<_i61.GetFeedPostsUseCase>(),
        gh<_i864.TogglePostLikeUseCase>(),
      ),
    );
    gh.factory<_i599.CreateChatUseCase>(
      () => _i599.CreateChatUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i507.GetContactsUseCase>(
      () => _i507.GetContactsUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i194.GetConversationsUseCase>(
      () => _i194.GetConversationsUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i325.GetMessagesUseCase>(
      () => _i325.GetMessagesUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i782.SubmitMessageUseCase>(
      () => _i782.SubmitMessageUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i712.UpdateMessageReadStatusUseCase>(
      () => _i712.UpdateMessageReadStatusUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i976.SubmitReactionUseCase>(
      () => _i976.SubmitReactionUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i314.SubmitRevokeUseCase>(
      () => _i314.SubmitRevokeUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i571.ChangePasswordUseCase>(
      () => _i571.ChangePasswordUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i146.GetInitialAuthDataUseCase>(
      () => _i146.GetInitialAuthDataUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i257.GetMeUseCase>(
      () => _i257.GetMeUseCase(gh<_i787.AuthRepository>()),
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
    gh.factory<_i860.UpdateFcmTokenUseCase>(
      () => _i860.UpdateFcmTokenUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i318.PersonBloc>(
      () => _i318.PersonBloc(gh<_i571.ChangePasswordUseCase>()),
    );
    gh.lazySingleton<_i120.AppBloc>(
      () => _i120.AppBloc(
        gh<_i146.GetInitialAuthDataUseCase>(),
        gh<_i257.GetMeUseCase>(),
        gh<_i711.LogoutUseCase>(),
        gh<_i860.UpdateFcmTokenUseCase>(),
        gh<_i160.AppPreferences>(),
        gh<_i538.GlobalWebSocketService>(),
      ),
    );
    gh.factory<_i483.GetNotificationsUseCase>(
      () => _i483.GetNotificationsUseCase(gh<_i630.NotificationRepository>()),
    );
    gh.factory<_i656.MarkAllAsReadUseCase>(
      () => _i656.MarkAllAsReadUseCase(gh<_i630.NotificationRepository>()),
    );
    gh.factory<_i102.MarkAsReadUseCase>(
      () => _i102.MarkAsReadUseCase(gh<_i630.NotificationRepository>()),
    );
    gh.lazySingleton<_i65.ChatBloc>(
      () => _i65.ChatBloc(
        gh<_i194.GetConversationsUseCase>(),
        gh<_i325.GetMessagesUseCase>(),
        gh<_i782.SubmitMessageUseCase>(),
        gh<_i976.SubmitReactionUseCase>(),
        gh<_i314.SubmitRevokeUseCase>(),
        gh<_i712.UpdateMessageReadStatusUseCase>(),
        gh<_i507.GetContactsUseCase>(),
        gh<_i599.CreateChatUseCase>(),
        gh<_i538.GlobalWebSocketService>(),
        gh<_i416.ChatMessageMapper>(),
      ),
    );
    gh.factory<_i204.LoginBloc>(
      () => _i204.LoginBloc(
        gh<_i37.LoginUseCase>(),
        gh<_i860.UpdateFcmTokenUseCase>(),
        gh<_i120.AppBloc>(),
      ),
    );
    gh.factory<_i386.GetStudentsUseCase>(
      () => _i386.GetStudentsUseCase(gh<_i215.StudentRepository>()),
    );
    gh.factory<_i60.FeedDetailBloc>(
      () => _i60.FeedDetailBloc(
        gh<_i76.GetFeedPostUseCase>(),
        gh<_i152.DeleteFeedPostUseCase>(),
        gh<_i644.GetFeedCommentsUseCase>(),
        gh<_i218.CreateFeedCommentUseCase>(),
        gh<_i864.TogglePostLikeUseCase>(),
        gh<_i19.ToggleCommentLikeUseCase>(),
        gh<_i538.GlobalWebSocketService>(),
      ),
    );
    gh.factory<_i967.CreateFeedBloc>(
      () => _i967.CreateFeedBloc(gh<_i436.CreateFeedPostUseCase>()),
    );
    gh.lazySingleton<_i29.NotificationBloc>(
      () => _i29.NotificationBloc(
        gh<_i483.GetNotificationsUseCase>(),
        gh<_i102.MarkAsReadUseCase>(),
        gh<_i656.MarkAllAsReadUseCase>(),
      ),
    );
    gh.factory<_i510.StudentBloc>(
      () => _i510.StudentBloc(gh<_i386.GetStudentsUseCase>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
