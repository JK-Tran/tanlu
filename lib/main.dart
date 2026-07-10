import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/shared/di/di.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/session/session_expired_helper.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/themes/app_typography.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:tanlu_management/shared/constants/env_constants.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:tanlu_management/shared/services/firebase/firebase_messaging_service.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp();
  await FirebaseMessagingService.initialize();

  EnvConstants.init();
  await configureInjection();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late final AppBloc _appBloc;
  late final GoRouter _router;

  static const String flavor = String.fromEnvironment(
    'FLAVOR',
    defaultValue: 'develop',
  );

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _appBloc = sl<AppBloc>();
    SessionExpiredHelper.navigateToLogin = () {
      _appBloc.add(const AppEvent.loggedOut());
    };
    _appBloc.add(const AppEvent.started());
    _router = AppRouter.createRouter(_appBloc);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        _appBloc.state.maybeWhen(
          authenticated: (_) {
            sl<NotificationBloc>().add(
              const NotificationEvent.loadNotifications(isRefresh: true),
            );
          },
          orElse: () {},
        );
        break;
      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        // Xử lý khi app bị ẩn hoặc kill (nếu cần sau này)
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet = constraints.maxWidth >= 600;
        return ScreenUtilInit(
          designSize: isTablet
              ? Size(constraints.maxWidth, constraints.maxHeight)
              : const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MultiBlocProvider(
              providers: [
                BlocProvider.value(value: _appBloc),
                BlocProvider<NotificationBloc>(
                  create: (context) => sl<NotificationBloc>(),
                ),
                BlocProvider<AttendanceBloc>(
                  create: (context) => sl<AttendanceBloc>()..add(const LeaveRequestsStarted()),
                ),
              ],
              child: MaterialApp.router(
                title: flavor == 'production'
                    ? 'Tanlu'
                    : 'Tanlu ${flavor.toUpperCase()}',
                locale: const Locale('vi'),
                supportedLocales: const [Locale('vi'), Locale('en')],
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                theme: ThemeData(
                  primaryColor: AppColors.primary,
                  textTheme: AppTypography.textTheme(
                    onBackground: AppColors.grayDark,
                    onSurface: AppColors.grayDark,
                    onSurfaceVariant: AppColors.grayMedium,
                  ),
                  useMaterial3: true,
                ),
                routerConfig: _router,
                debugShowCheckedModeBanner: false,
                builder: (context, child) {
                  final content = child ?? const SizedBox.shrink();
                  if (flavor == 'production') return content;
                  return Banner(
                    location: BannerLocation.topStart,
                    message: flavor.toUpperCase(),
                    color: flavor == 'stg' ? Colors.orange : Colors.green,
                    child: content,
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
