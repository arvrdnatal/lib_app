import 'package:go_router/go_router.dart';
import 'package:lib_app/core/routes/route_names.dart';
import 'package:lib_app/ui/features/splash/splash_page.dart';

import '../../ui/features/home/home_page.dart';
import '../../ui/features/profile/profile_page.dart';
import '../../ui/shared/bottomNavBar/navigation_bar_home_widget.dart';

final routes = GoRouter(
  initialLocation: Routes.splash.path,
  routes: [
    GoRoute(
      name: Routes.splash.name,
      path: Routes.splash.path,
      builder: (context, state) => const SplashPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => NavigationBarHomeWidget(navShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: Routes.home.name,
              path: Routes.home.path,
              builder: (context, state) => HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: Routes.profile.name,
              path: Routes.profile.path,
              builder: (context, state) => ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
