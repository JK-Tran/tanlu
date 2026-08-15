import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/core/notification/notification_service.dart';
import 'package:tanlu_management/features/auth/presentation/login/pages/login_page.dart';
import 'package:tanlu_management/features/home/presentation/pages/home_page.dart';

import 'package:tanlu_management/features/student/presentation/pages/student_page.dart';
import 'package:tanlu_management/features/student/presentation/pages/student_detail/student_detail_page.dart';

import 'package:tanlu_management/features/person/presentation/pages/person_page.dart';
import 'package:tanlu_management/features/overview/presentation/pages/overview_page.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/pages/feed_page.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/pages/create_feed_page.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/pages/feed_detail_page.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';

import 'package:tanlu_management/features/activity/presentation/pages/activity_page.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/pages/chat_page.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/attendance_tab.dart';
import 'package:tanlu_management/features/attendance/presentation/pages/attendance_page.dart';
import 'package:tanlu_management/features/notification/presentation/pages/notification_page.dart';
import 'package:tanlu_management/core/router/custom_transitions.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

class AppRouter {
  const AppRouter._();

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
  static const String notification = '/notification';

  static GoRouter createRouter(AppBloc appBloc) {
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: root,
      debugLogDiagnostics: kDebugMode,
      redirect: (context, state) {
        final appState = appBloc.state;
        final currentLoc = state.matchedLocation;
        final isOnLogin = currentLoc == login;
        final isOnRoot = currentLoc == root;

        return appState.maybeWhen(
          loading: () => null,
          unauthenticated: () {
            FlutterNativeSplash.remove();
            NotificationService.requestPermission();
            return isOnLogin ? null : login;
          },
          authenticated: (user) {
            FlutterNativeSplash.remove();
            NotificationService.requestPermission();
            final isParent = user.role == 'parent';
            if (isOnLogin || isOnRoot) {
              return isParent ? activity : overview;
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
        GoRoute(
          path: '/student-detail/:id',
          name: 'student-detail',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) {
            final id = int.tryParse(state.pathParameters['id']!) ?? 0;
            return StudentDetailPage(studentId: id);
          },
        ),
        // GoRoute(
        //   path: settings,
        //   name: 'settings',
        //   parentNavigatorKey: rootNavigatorKey,
        //   builder: (context, state) => const PersonAboutPage(),
        // ),
        GoRoute(
          path: attendance,
          name: 'attendance',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) {
            final tab = AttendanceTab.fromQuery(
              state.uri.queryParameters['tab'],
            );
            return AttendancePage(initialTab: tab);
          },
        ),
        GoRoute(
          path: notification,
          name: 'notification',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => const NotificationPage(),
        ),
        GoRoute(
          path: createFeed,
          name: 'create-feed',
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => const CreateFeedPage(),
        ),
        GoRoute(
          path: feedDetail,
          name: 'feed-detail',
          parentNavigatorKey: rootNavigatorKey,
          pageBuilder: (context, state) {
            final extra = state.extra as ({FeedPost feed, bool openComments})?;
            return SlideTransitionPage(
              child: FeedDetailPage(
                feed: extra?.feed,
                openComments: extra?.openComments ?? false,
              ),
            );
          },
        ),
        GoRoute(
          path: '$feedDetail/:id',
          name: 'feed-detail-by-id',
          parentNavigatorKey: rootNavigatorKey,
          pageBuilder: (context, state) {
            final id = int.tryParse(state.pathParameters['id']!) ?? 0;
            final commentIdStr = state.uri.queryParameters['commentId'];
            final highlightCommentId = commentIdStr != null
                ? int.tryParse(commentIdStr)
                : null;
            return SlideTransitionPage(
              child: FeedDetailPage(
                postId: id,
                openComments: true,
                highlightCommentId: highlightCommentId,
              ),
            );
          },
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return HomePage(navigationShell: navigationShell);
          },
          branches: [
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
