import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/router/custom_transitions.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/auth/presentation/login/pages/login_page.dart';
import 'package:tanlu_management/features/home/presentation/pages/home_page.dart';

import 'package:tanlu_management/features/student/presentation/pages/student_page.dart';
import 'package:tanlu_management/features/student/presentation/pages/student_detail/student_detail_page.dart';

import 'package:tanlu_management/features/person/presentation/pages/person_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_about_page.dart';
import 'package:tanlu_management/features/overview/presentation/pages/overview_page.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/pages/feed_page.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/pages/create_feed_page.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/pages/feed_detail_page.dart';

import 'package:tanlu_management/features/activity/presentation/pages/activity_page.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/pages/chat_page.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/attendance_tab.dart';
import 'package:tanlu_management/features/attendance/presentation/pages/attendance_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

class AppRouter {
  const AppRouter._();

  // Route paths
  static const String root = '/';
  static const String login = '/login';
  static const String student = '/student';
  static const String studentDetail = '/student-detail';
  static const String report = '/report';
  static const String programs = '/programs';
  static const String progress = '/progress';
  static const String activity = '/activity';
  static const String message = '/message';
  static const String person = '/person';
  static const String settings = '/settings';
  static const String overview = '/overview';
  static const String feed = '/feed';
  static const String createFeed = '/feed/create';
  static const String feedDetail = '/feed/detail';
  static const String attendance = '/attendance';

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

        return appState.maybeWhen(
          loading: () =>
              null, // Đang loading → không redirect, giữ nguyên ở Splash
          unauthenticated: () {
            FlutterNativeSplash.remove();
            return isOnLogin ? null : login; // Về Login nếu chưa đăng nhập
          },
          authenticated: (user) {
            FlutterNativeSplash.remove();
            final isParent = user.role == 'parent';
            if (isOnLogin || isOnRoot) {
              return isParent ? progress : overview;
            }
            return null;
          },
          orElse: () => null,
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

        // GoRoute(
        //   path: '/chat-detail/:id',
        //   name: 'chat-detail',
        //   parentNavigatorKey: _rootNavigatorKey,
        //   builder: (context, state) {
        //     final id = state.pathParameters['id']!;
        //     return ChatDetailPage(conversationId: id);
        //   },
        // ),
        GoRoute(
          path: '/student-detail/:id',
          name: 'student-detail',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            return StudentDetailPage(studentId: id);
          },
        ),

        GoRoute(
          path: settings,
          name: 'settings',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => const PersonAboutPage(),
        ),
        GoRoute(
          path: attendance,
          name: 'attendance',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) {
            final tab = AttendanceTab.fromQuery(
              state.uri.queryParameters['tab'],
            );
            return AttendancePage(initialTab: tab);
          },
        ),
        GoRoute(
          path: createFeed,
          name: 'create-feed',
          parentNavigatorKey: _rootNavigatorKey,
          builder: (context, state) => const CreateFeedPage(),
        ),
        GoRoute(
          path: feedDetail,
          name: 'feed-detail',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            final extra = state.extra! as ({Feed feed, bool openComments});
            return SlideTransitionPage(
              child: FeedDetailPage(
                feed: extra.feed,
                openComments: extra.openComments,
              ),
            );
          },
        ),
        // Shell: wraps all tabs inside HomePage (bottom nav)
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return BlocProvider.value(
              value: sl<ChatBloc>(),
              child: HomePage(navigationShell: navigationShell),
            );
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
                      const FadeTransitionPage(child: ChatPage()),
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

            // Branch 7: Tổng quan (Teacher)
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: overview,
                  name: 'overview',
                  pageBuilder: (context, state) =>
                      const FadeTransitionPage(child: OverviewPage()),
                ),
              ],
            ),
            // Branch 8: Bảng tin (Teacher)
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: feed,
                  name: 'feed',
                  pageBuilder: (context, state) =>
                      const FadeTransitionPage(child: FeedPage()),
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
