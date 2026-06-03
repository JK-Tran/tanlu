import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initInjection();
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
  static const String flavor = String.fromEnvironment(
    'FLAVOR',
    defaultValue: 'production',
  );

  @override
  void initState() {
    super.initState();
    _appBloc = sl<AppBloc>();
    _appBloc.add(const AppEvent.started());
    _router = AppRouter.createRouter(_appBloc);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider.value(
          value: _appBloc,
          child: MaterialApp.router(
            title: flavor == 'production'
                ? 'Tanlu'
                : 'Tanlu ${flavor.toUpperCase()}',
            theme: ThemeData(
              primaryColor: const Color(0xFF6366F1), // Tùy chỉnh sau
              fontFamily: 'Inter',
              useMaterial3: true,
            ),
            routerConfig: _router,
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              final content = Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: child ?? SizedBox(),
                ),
              );
              
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
  }
}
