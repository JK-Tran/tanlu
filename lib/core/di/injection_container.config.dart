// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/app/data/repositories/app_repository_impl.dart' as _i111;
import '../../features/app/data/sources/app_api_service.dart' as _i512;
import '../../features/app/domain/repositories/app_repository.dart' as _i456;
import '../../features/app/presentation/bloc/app_bloc.dart' as _i120;
import '../../features/auth/data/mapper/center_data_mapper.dart' as _i443;
import '../../features/auth/data/mapper/role_data_mapper.dart' as _i337;
import '../../features/auth/data/mapper/user_data_mapper.dart' as _i702;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/data/sources/auth_api_service.dart' as _i587;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/login_use_case.dart' as _i37;
import '../../features/auth/domain/usecases/logout_use_case.dart' as _i711;
import '../../features/auth/domain/usecases/save_current_user_use_case.dart'
    as _i546;
import '../../features/auth/presentation/login/bloc/login_bloc.dart' as _i204;
import '../../features/chat/data/mapper/chat_user_data_mapper.dart' as _i182;
import '../../features/chat/data/mapper/contact_data_mapper.dart' as _i203;
import '../../features/chat/data/mapper/conversation_data_mapper.dart' as _i808;
import '../../features/chat/data/mapper/message_data_mapper.dart' as _i1071;
import '../../features/chat/data/mapper/participant_data_mapper.dart' as _i50;
import '../../features/chat/data/repositories/chat_repository_impl.dart'
    as _i504;
import '../../features/chat/data/sources/chat_api_service.dart' as _i958;
import '../../features/chat/domain/repositories/chat_repository.dart' as _i420;
import '../../features/chat/domain/usecases/create_conversation_use_case.dart'
    as _i441;
import '../../features/chat/domain/usecases/get_contacts_use_case.dart'
    as _i444;
import '../../features/chat/domain/usecases/get_conversations_use_case.dart'
    as _i890;
import '../../features/chat/domain/usecases/get_messages_use_case.dart'
    as _i671;
import '../../features/chat/domain/usecases/mark_messages_as_read_use_case.dart'
    as _i29;
import '../../features/chat/domain/usecases/send_message_use_case.dart'
    as _i500;
import '../../features/chat/presentation/bloc/chat_bloc.dart' as _i65;
import '../../features/student/data/mapper/classroom_data_mapper.dart' as _i317;
import '../../features/student/data/mapper/development_assessment_data_mapper.dart'
    as _i929;
import '../../features/student/data/mapper/development_result_data_mapper.dart'
    as _i43;
import '../../features/student/data/mapper/parent_data_mapper.dart' as _i906;
import '../../features/student/data/mapper/screening_result_data_mapper.dart'
    as _i678;
import '../../features/student/data/mapper/screening_test_data_mapper.dart'
    as _i563;
import '../../features/student/data/mapper/student_data_mapper.dart' as _i67;
import '../../features/student/data/mapper/student_parent_data_mapper.dart'
    as _i842;
import '../../features/student/data/mapper/student_teacher_data_mapper.dart'
    as _i849;
import '../../features/student/data/mapper/teacher_data_mapper.dart' as _i437;
import '../../features/student/data/repositories/student_repository_impl.dart'
    as _i687;
import '../../features/student/data/sources/student_api_service.dart' as _i374;
import '../../features/student/domain/repositories/student_repository.dart'
    as _i215;
import '../../features/student/domain/usecases/get_student_use_case.dart'
    as _i696;
import '../../features/student/domain/usecases/get_students_use_case.dart'
    as _i386;
import '../../features/student/domain/usecases/update_student_use_case.dart'
    as _i778;
import '../../features/student/presentation/bloc/student_bloc.dart' as _i510;
import '../../shared/helper/app_info.dart' as _i80;
import '../../shared/helper/device_info.dart' as _i303;
import '../../shared/network/api_client.dart' as _i757;
import '../../shared/network/dio_client.dart' as _i833;
import '../../shared/services/google_auth_service.dart' as _i175;
import '../../shared/services/local_storage/app_preferences.dart' as _i531;
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
    gh.factory<_i443.CenterDataMapper>(() => _i443.CenterDataMapper());
    gh.factory<_i337.RoleDataMapper>(() => _i337.RoleDataMapper());
    gh.factory<_i182.ChatUserDataMapper>(() => _i182.ChatUserDataMapper());
    gh.factory<_i203.ContactDataMapper>(() => _i203.ContactDataMapper());
    gh.factory<_i929.DevelopmentAssessmentDataMapper>(
      () => _i929.DevelopmentAssessmentDataMapper(),
    );
    gh.factory<_i563.ScreeningTestDataMapper>(
      () => _i563.ScreeningTestDataMapper(),
    );
    gh.lazySingleton<_i59.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.lazySingleton<_i303.DeviceInfo>(() => registerModule.deviceInfo());
    gh.lazySingleton<_i80.AppInfo>(() => _i80.AppInfo());
    gh.lazySingleton<_i964.SharedPrefsHelper>(
      () => _i964.SharedPrefsHelper(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i46.SocketService>(
      () => _i46.SocketService(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i1071.MessageDataMapper>(
      () => _i1071.MessageDataMapper(gh<_i182.ChatUserDataMapper>()),
    );
    gh.factory<_i50.ParticipantDataMapper>(
      () => _i50.ParticipantDataMapper(gh<_i182.ChatUserDataMapper>()),
    );
    gh.factory<_i808.ConversationDataMapper>(
      () => _i808.ConversationDataMapper(
        gh<_i50.ParticipantDataMapper>(),
        gh<_i1071.MessageDataMapper>(),
      ),
    );
    gh.lazySingleton<_i531.AppPreferences>(
      () => _i512.AppApiService(gh<_i964.SharedPrefsHelper>()),
    );
    gh.lazySingleton<_i456.AppRepository>(
      () => _i111.AppRepositoryImpl(gh<_i531.AppPreferences>()),
    );
    gh.factory<_i702.UserDataMapper>(
      () => _i702.UserDataMapper(
        centerDataMapper: gh<_i443.CenterDataMapper>(),
        roleDataMapper: gh<_i337.RoleDataMapper>(),
      ),
    );
    gh.factory<_i317.ClassroomDataMapper>(
      () => _i317.ClassroomDataMapper(gh<_i443.CenterDataMapper>()),
    );
    gh.lazySingleton<_i833.DioClient>(
      () => registerModule.dioClient(gh<_i964.SharedPrefsHelper>()),
    );
    gh.lazySingleton<_i175.GoogleAuthService>(
      () => _i175.GoogleAuthService(gh<_i59.FirebaseAuth>()),
    );
    gh.factory<_i43.DevelopmentResultDataMapper>(
      () => _i43.DevelopmentResultDataMapper(
        gh<_i929.DevelopmentAssessmentDataMapper>(),
        gh<_i702.UserDataMapper>(),
      ),
    );
    gh.lazySingleton<_i757.ApiClient>(
      () => _i757.ApiClient(gh<_i833.DioClient>()),
    );
    gh.factory<_i906.ParentDataMapper>(
      () => _i906.ParentDataMapper(gh<_i702.UserDataMapper>()),
    );
    gh.factory<_i437.TeacherDataMapper>(
      () => _i437.TeacherDataMapper(gh<_i702.UserDataMapper>()),
    );
    gh.factory<_i678.ScreeningResultDataMapper>(
      () => _i678.ScreeningResultDataMapper(
        gh<_i563.ScreeningTestDataMapper>(),
        gh<_i702.UserDataMapper>(),
      ),
    );
    gh.factory<_i842.StudentParentDataMapper>(
      () => _i842.StudentParentDataMapper(gh<_i906.ParentDataMapper>()),
    );
    gh.lazySingleton<_i587.AuthApiService>(
      () => _i587.AuthApiService(gh<_i757.ApiClient>()),
    );
    gh.lazySingleton<_i958.ChatApiService>(
      () => _i958.ChatApiService(gh<_i757.ApiClient>()),
    );
    gh.lazySingleton<_i374.StudentApiService>(
      () => _i374.StudentApiService(gh<_i757.ApiClient>()),
    );
    gh.factory<_i849.StudentTeacherDataMapper>(
      () => _i849.StudentTeacherDataMapper(gh<_i437.TeacherDataMapper>()),
    );
    gh.lazySingleton<_i420.ChatRepository>(
      () => _i504.ChatRepositoryImpl(
        gh<_i958.ChatApiService>(),
        gh<_i808.ConversationDataMapper>(),
        gh<_i1071.MessageDataMapper>(),
        gh<_i203.ContactDataMapper>(),
      ),
    );
    gh.factory<_i441.CreateConversationUseCase>(
      () => _i441.CreateConversationUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i444.GetContactsUseCase>(
      () => _i444.GetContactsUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i890.GetConversationsUseCase>(
      () => _i890.GetConversationsUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i671.GetMessagesUseCase>(
      () => _i671.GetMessagesUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i29.MarkMessagesAsReadUseCase>(
      () => _i29.MarkMessagesAsReadUseCase(gh<_i420.ChatRepository>()),
    );
    gh.factory<_i500.SendMessageUseCase>(
      () => _i500.SendMessageUseCase(gh<_i420.ChatRepository>()),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i587.AuthApiService>(),
        gh<_i531.AppPreferences>(),
        gh<_i702.UserDataMapper>(),
      ),
    );
    gh.factory<_i67.StudentDataMapper>(
      () => _i67.StudentDataMapper(
        gh<_i317.ClassroomDataMapper>(),
        gh<_i842.StudentParentDataMapper>(),
        gh<_i849.StudentTeacherDataMapper>(),
        gh<_i678.ScreeningResultDataMapper>(),
        gh<_i43.DevelopmentResultDataMapper>(),
      ),
    );
    gh.lazySingleton<_i215.StudentRepository>(
      () => _i687.StudentRepositoryImpl(
        gh<_i374.StudentApiService>(),
        gh<_i67.StudentDataMapper>(),
      ),
    );
    gh.lazySingleton<_i65.ChatBloc>(
      () => _i65.ChatBloc(
        gh<_i890.GetConversationsUseCase>(),
        gh<_i444.GetContactsUseCase>(),
        gh<_i671.GetMessagesUseCase>(),
        gh<_i500.SendMessageUseCase>(),
        gh<_i441.CreateConversationUseCase>(),
        gh<_i29.MarkMessagesAsReadUseCase>(),
        gh<_i46.SocketService>(),
        gh<_i1071.MessageDataMapper>(),
      ),
    );
    gh.lazySingleton<_i120.AppBloc>(
      () => _i120.AppBloc(
        gh<_i787.AuthRepository>(),
        gh<_i531.AppPreferences>(),
        gh<_i46.SocketService>(),
      ),
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
    gh.factory<_i386.GetStudentsUseCase>(
      () => _i386.GetStudentsUseCase(gh<_i215.StudentRepository>()),
    );
    gh.factory<_i696.GetStudentUseCase>(
      () => _i696.GetStudentUseCase(gh<_i215.StudentRepository>()),
    );
    gh.factory<_i778.UpdateStudentUseCase>(
      () => _i778.UpdateStudentUseCase(gh<_i215.StudentRepository>()),
    );
    gh.factory<_i510.StudentBloc>(
      () => _i510.StudentBloc(
        gh<_i386.GetStudentsUseCase>(),
        gh<_i696.GetStudentUseCase>(),
        gh<_i778.UpdateStudentUseCase>(),
      ),
    );
    gh.factory<_i204.LoginBloc>(() => _i204.LoginBloc(gh<_i37.LoginUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
