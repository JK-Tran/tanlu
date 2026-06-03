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
import '../../features/programs/data/mapper/program_data_mapper.dart' as _i562;
import '../../features/programs/data/mapper/program_file_data_mapper.dart'
    as _i64;
import '../../features/programs/data/repositories/program_repository_impl.dart'
    as _i669;
import '../../features/programs/data/sources/program_api_service.dart' as _i429;
import '../../features/programs/domain/repositories/program_repository.dart'
    as _i1057;
import '../../features/programs/domain/usecases/get_program_by_id_use_case.dart'
    as _i1008;
import '../../features/programs/domain/usecases/get_programs_use_case.dart'
    as _i895;
import '../../features/programs/presentation/bloc/programs_bloc.dart' as _i625;
import '../../features/report/data/mapper/creator_data_mapper.dart' as _i344;
import '../../features/report/data/mapper/file_data_mapper.dart' as _i313;
import '../../features/report/data/mapper/report_data_mapper.dart' as _i110;
import '../../features/report/data/repositories/report_repository_impl.dart'
    as _i420;
import '../../features/report/data/sources/report_api_service.dart' as _i256;
import '../../features/report/domain/repositories/report_repository.dart'
    as _i23;
import '../../features/report/domain/usecases/create_report_use_case.dart'
    as _i256;
import '../../features/report/domain/usecases/delete_report_file_use_case.dart'
    as _i641;
import '../../features/report/domain/usecases/delete_report_use_case.dart'
    as _i146;
import '../../features/report/domain/usecases/get_report_by_id_use_case.dart'
    as _i716;
import '../../features/report/domain/usecases/get_reports_use_case.dart'
    as _i916;
import '../../features/report/domain/usecases/update_report_use_case.dart'
    as _i515;
import '../../features/report/domain/usecases/upload_file_use_case.dart'
    as _i370;
import '../../features/report/presentation/bloc/report_bloc.dart' as _i852;
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
    gh.factory<_i64.ProgramFileDataMapper>(() => _i64.ProgramFileDataMapper());
    gh.factory<_i344.CreatorDataMapper>(() => _i344.CreatorDataMapper());
    gh.factory<_i313.FileDataMapper>(() => _i313.FileDataMapper());
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
    gh.lazySingleton<_i429.ProgramApiService>(
      () => _i429.ProgramApiService(gh<_i757.ApiClient>()),
    );
    gh.lazySingleton<_i256.ReportApiService>(
      () => _i256.ReportApiService(gh<_i757.ApiClient>()),
    );
    gh.lazySingleton<_i374.StudentApiService>(
      () => _i374.StudentApiService(gh<_i757.ApiClient>()),
    );
    gh.factory<_i849.StudentTeacherDataMapper>(
      () => _i849.StudentTeacherDataMapper(gh<_i437.TeacherDataMapper>()),
    );
    gh.factory<_i562.ProgramDataMapper>(
      () => _i562.ProgramDataMapper(
        gh<_i64.ProgramFileDataMapper>(),
        gh<_i317.ClassroomDataMapper>(),
      ),
    );
    gh.lazySingleton<_i1057.ProgramRepository>(
      () => _i669.ProgramRepositoryImpl(
        gh<_i429.ProgramApiService>(),
        gh<_i562.ProgramDataMapper>(),
      ),
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
    gh.factory<_i895.GetProgramsUseCase>(
      () => _i895.GetProgramsUseCase(gh<_i1057.ProgramRepository>()),
    );
    gh.factory<_i1008.GetProgramByIdUseCase>(
      () => _i1008.GetProgramByIdUseCase(gh<_i1057.ProgramRepository>()),
    );
    gh.factory<_i625.ProgramsBloc>(
      () => _i625.ProgramsBloc(
        gh<_i895.GetProgramsUseCase>(),
        gh<_i1008.GetProgramByIdUseCase>(),
      ),
    );
    gh.lazySingleton<_i215.StudentRepository>(
      () => _i687.StudentRepositoryImpl(
        gh<_i374.StudentApiService>(),
        gh<_i67.StudentDataMapper>(),
      ),
    );
    gh.factory<_i110.ReportDataMapper>(
      () => _i110.ReportDataMapper(
        gh<_i313.FileDataMapper>(),
        gh<_i67.StudentDataMapper>(),
        gh<_i344.CreatorDataMapper>(),
      ),
    );
    gh.lazySingleton<_i120.AppBloc>(
      () =>
          _i120.AppBloc(gh<_i787.AuthRepository>(), gh<_i531.AppPreferences>()),
    );
    gh.lazySingleton<_i23.ReportRepository>(
      () => _i420.ReportRepositoryImpl(
        gh<_i256.ReportApiService>(),
        gh<_i110.ReportDataMapper>(),
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
    gh.factory<_i256.CreateReportUseCase>(
      () => _i256.CreateReportUseCase(gh<_i23.ReportRepository>()),
    );
    gh.factory<_i641.DeleteReportFileUseCase>(
      () => _i641.DeleteReportFileUseCase(gh<_i23.ReportRepository>()),
    );
    gh.factory<_i146.DeleteReportUseCase>(
      () => _i146.DeleteReportUseCase(gh<_i23.ReportRepository>()),
    );
    gh.factory<_i916.GetReportsUseCase>(
      () => _i916.GetReportsUseCase(gh<_i23.ReportRepository>()),
    );
    gh.factory<_i716.GetReportByIdUseCase>(
      () => _i716.GetReportByIdUseCase(gh<_i23.ReportRepository>()),
    );
    gh.factory<_i515.UpdateReportUseCase>(
      () => _i515.UpdateReportUseCase(gh<_i23.ReportRepository>()),
    );
    gh.factory<_i370.UploadFileUseCase>(
      () => _i370.UploadFileUseCase(gh<_i23.ReportRepository>()),
    );
    gh.factory<_i204.LoginBloc>(() => _i204.LoginBloc(gh<_i37.LoginUseCase>()));
    gh.factory<_i852.ReportBloc>(
      () => _i852.ReportBloc(
        gh<_i386.GetStudentsUseCase>(),
        gh<_i916.GetReportsUseCase>(),
        gh<_i256.CreateReportUseCase>(),
        gh<_i370.UploadFileUseCase>(),
        gh<_i716.GetReportByIdUseCase>(),
        gh<_i515.UpdateReportUseCase>(),
        gh<_i641.DeleteReportFileUseCase>(),
        gh<_i146.DeleteReportUseCase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
