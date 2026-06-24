import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/themes/app_typography.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tanlu_management/core/router/push_navigation_helper.dart';
import 'package:tanlu_management/core/session/session_expired_helper.dart';
import 'package:tanlu_management/shared/services/firebase/app_check_service.dart';
import 'package:tanlu_management/shared/services/firebase/fcm_messaging.dart';
import 'package:tanlu_management/shared/services/firebase/local_notification_service.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Firebase.initializeApp();
  await AppCheckService.activate();

  await initInjection();
  await sl<FcmMessaging>().initialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppBloc _appBloc;
  late final GoRouter _router;
  StreamSubscription<AppState>? _appStateSub;
  static const String flavor = String.fromEnvironment(
    'FLAVOR',
    defaultValue: 'production',
  );

  @override
  void initState() {
    super.initState();
    _appBloc = sl<AppBloc>();
    SessionExpiredHelper.navigateToLogin = () {
      _appBloc.add(const AppEvent.loggedOut());
    };
    _appBloc.add(const AppEvent.started());
    _router = AppRouter.createRouter(_appBloc);
    PushNavigationHelper.router = _router;
    _syncPushAuthState(_appBloc.state);
    _appStateSub = _appBloc.stream.listen(_syncPushAuthState);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await sl<LocalNotificationService>().handleLaunchNotification();
      await sl<FcmMessaging>().handleInitialMessage();
    });
  }

  void _syncPushAuthState(AppState state) {
    final isAuthenticated = state.maybeWhen(
      authenticated: (_) => true,
      orElse: () => false,
    );
    PushNavigationHelper.setAuthenticated(isAuthenticated);
  }

  @override
  void dispose() {
    _appStateSub?.cancel();
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
            return BlocProvider.value(
              value: _appBloc,
              child: MaterialApp.router(
                title: flavor == 'production'
                    ? 'Tanlu'
                    : 'Tanlu ${flavor.toUpperCase()}',
                locale: const Locale('vi'),
                supportedLocales: const [
                  Locale('vi'),
                  Locale('en'),
                ],
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                theme: ThemeData(
                  primaryColor: AppColors.primary, // Tùy chỉnh sau
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
                  if (flavor == 'production') return child ?? const SizedBox();
                  return Banner(
                    location: BannerLocation.topStart,
                    message: flavor.toUpperCase(),
                    color: flavor == 'stg' ? Colors.orange : Colors.green,
                    child: child,
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
