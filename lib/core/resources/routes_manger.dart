import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:ososs_flutter_test/features/home/presentation/pages/home_page.dart';
import 'package:ososs_flutter_test/features/page_one/presentation/pages/page_one.dart';
import 'package:ososs_flutter_test/features/page_two/presentation/pages/page_two.dart';
import 'package:ososs_flutter_test/features/splash/presentation/pages/splash_page.dart';

import 'app_routes_names.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class RoutesManager {
  RoutesManager() {
    _appRouter = GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: AppRoutesNames.splash,
          pageBuilder: (context, state) => CupertinoPage(
            child: const SplashPage(),
            key: state.pageKey,
            name: state.name,
          ),
        ),
        GoRoute(
          path: '/home',
          name: AppRoutesNames.home,
          pageBuilder: (context, state) => CupertinoPage(
            child: const HomePage(),
            key: state.pageKey,
            name: state.name,
          ),
        ),
        GoRoute(
          path: '/page-one',
          name: AppRoutesNames.pageOne,
          pageBuilder: (context, state) => CupertinoPage(
            child: const PageOne(),
            key: state.pageKey,
            name: state.name,
          ),
        ),
        GoRoute(
          path: '/page-two',
          name: AppRoutesNames.pageTwo,
          pageBuilder: (context, state) => CupertinoPage(
            child: const PageTwo(),
            key: state.pageKey,
            name: state.name,
          ),
        ),
      ],
    );
  }

  late final GoRouter _appRouter;
  GoRouter get router => _appRouter;
}
