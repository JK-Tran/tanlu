import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/custom_transitions.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/auth/presentation/login/pages/login_page.dart';
import 'package:tanlu_management/features/home/presentation/pages/home_page.dart';
import 'package:tanlu_management/features/report/presentation/pages/report_page.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/presentation/pages/student_page.dart';
import 'package:tanlu_management/features/student/presentation/pages/student_detail_page.dart';
import 'package:tanlu_management/features/programs/presentation/pages/programs_page.dart';
import 'package:tanlu_management/features/programs/presentation/pages/program_detail_page.dart';
import 'package:tanlu_management/features/programs/domain/entity/program.dart';

import 'package:tanlu_management/features/report/presentation/pages/report_detail_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/settings_page.dart';

import 'package:tanlu_management/features/progress/presentation/pages/progress_page.dart';
import 'package:tanlu_management/features/activity/presentation/pages/activity_page.dart';
import 'package:tanlu_management/features/message/presentation/pages/message_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

class AppRouter {
  const AppRouter._();

  // Route paths
  static const String root = '/';
  static const String login = '/login';
  static const String student = '/student';
  static const String report = '/report';
  static const String programs = '/programs';
  static const String progress = '/progress';
  static const String activity = '/activity';
  static const String message = '/message';
  static const String person = '/person';
  static const String settings = '/settings';

  static GoRouter createRouter(AppBloc appBloc) {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: root,
      debugLogDiagnostics: kDebugMode,

      // Redirect dựa trên AppState — tự động điều hướng đúng trang
      redirect: (context, state) {
        final appState = appBloc.state;
        final currentLoc = state.matchedLocation;
        final isOnLogin = currentLoc == login;
        final isOnRoot = currentLoc == root;

        return appState.when(
          loading: () =>
              null, // Đang loading → không redirect, giữ nguyên ở Splash
          unauthenticated: () {
            FlutterNativeSplash.remove();
            return isOnLogin ? null : login; // Về Login nếu chưa đăng nhập
          },
          authenticated: (user) {
            FlutterNativeSplash.remove();
            final isParent = user.role.code.toUpperCase() == 'PARENT';
            if (isOnLogin || isOnRoot) {
              return isParent ? progress : student;
            }
            return null;
          },
        );
      },
      refreshListenable: _AppBlocListenable(appBloc),
      routes: <RouteBase>[
        GoRoute(
          path: root,
          name: 'splash',
          builder: (context, state) =>
              const Scaffold(backgroundColor: Colors.white),
        ),
        GoRoute(
          path: login,
          name: 'login',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: '/student-detail',
          name: 'student-detail',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) {
            final student = state.extra as Student;
            return StudentDetailPage(student: student);
          },
        ),
        GoRoute(
          path: '/report-detail',
          name: 'report-detail',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) {
            final args = state.extra as ReportDetailArgs;
            return BlocProvider.value(
              value: args.reportBloc,
              child: ReportDetailPage(
                student: args.student,
                report: args.report,
                selectedMonth: args.selectedMonth,
              ),
            );
          },
        ),
        GoRoute(
          path: '/program-detail',
          name: 'program-detail',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) {
            final program = state.extra as Program;
            return ProgramDetailPage(program: program);
          },
        ),
        GoRoute(
          path: settings,
          name: 'settings',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => const SettingsPage(),
        ),
        // Shell: wraps all tabs inside HomePage (bottom nav)
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return HomePage(navigationShell: navigationShell);
          },
          branches: [
            // Branch 0: DS Trẻ (Teacher)
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: student,
                  name: 'student',
                  pageBuilder: (context, state) =>
                      const FadeTransitionPage(child: StudentPage()),
                ),
              ],
            ),
            // Branch 1: Báo cáo (Teacher)
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: report,
                  name: 'report',
                  pageBuilder: (context, state) {
                    return FadeTransitionPage(child: ReportPage());
                  },
                ),
              ],
            ),
            // Branch 2: Tiến trình (Parent)
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: progress,
                  name: 'progress',
                  pageBuilder: (context, state) =>
                      const FadeTransitionPage(child: ProgressPage()),
                ),
              ],
            ),
            // Branch 3: Hoạt động (Parent)
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: activity,
                  name: 'activity',
                  pageBuilder: (context, state) =>
                      const FadeTransitionPage(child: ActivityPage()),
                ),
              ],
            ),
            // Branch 4: Tin nhắn (Both)
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: message,
                  name: 'message',
                  pageBuilder: (context, state) =>
                      const FadeTransitionPage(child: MessagePage()),
                ),
              ],
            ),
            // Branch 5: Cá nhân (Both)
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: person,
                  name: 'person',
                  pageBuilder: (context, state) =>
                      const FadeTransitionPage(child: PersonPage()),
                ),
              ],
            ),
            // Branch 6: Giáo trình (Teacher)
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: programs,
                  name: 'programs',
                  pageBuilder: (context, state) =>
                      const FadeTransitionPage(child: ProgramsPage()),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

/// Listenable adapter để GoRouter lắng nghe thay đổi AppBloc state
class _AppBlocListenable extends ChangeNotifier {
  _AppBlocListenable(AppBloc appBloc) {
    _subscription = appBloc.stream.listen((_) => notifyListeners());
  }

  late final dynamic _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
