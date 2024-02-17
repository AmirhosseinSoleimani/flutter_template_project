import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'features/features.dart';


/// A class that contains all the routes for the application.
class Routes {
  /// A global key for the parent navigator.
  static final parentNavigatorKey = GlobalKey<NavigatorState>();

  /// A global key for the home tab navigator.
  static final homeTabNavigatorKey = GlobalKey<NavigatorState>();

  /// A global key for the profile tab navigator.
  static final profileTabNavigatorKey = GlobalKey<NavigatorState>();

  /// The routes for the application.
  static final routes = GoRouter(
    /// The key for the navigator used by the routes.
    navigatorKey: parentNavigatorKey,
    routes: [
      GoRoute(
        /// The path for the splash screen.
        path: '/',
        /// The builder for the splash screen.
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        /// The path for the authentication screen.
        path: '/auth',
        /// The builder for the authentication screen.
        builder: (context, state) => const AuthScreen(),
      ),
      /// A route that uses an indexed stack with two branches.
      StatefulShellRoute.indexedStack(
        /// The key for the navigator used by the branches.
        parentNavigatorKey: parentNavigatorKey,
        branches: [
          /// The first branch of the indexed stack.
          StatefulShellBranch(
            /// The key for the navigator used by the routes in the branch.
            navigatorKey: homeTabNavigatorKey,
            /// The routes for the first branch.
            routes: [
              GoRoute(
                /// The path for the main screen in the first branch.
                path: '/main',
                /// The builder for the main screen in the first branch.
                pageBuilder: (context, state) {
                  return getPage(
                    /// The child for the main screen.
                    child: const HomeScreen(),
                    /// The state for the current route.
                    state: state,
                  );
                },
              ),
            ],
          ),
          /// The second branch of the indexed stack.
          StatefulShellBranch(
            /// The key for the navigator used by the routes in the branch.
            navigatorKey: profileTabNavigatorKey,
            /// The routes for the second branch.
            routes: [
              GoRoute(
                /// The path for the profile screen in the second branch.
                path: '/profile',
                /// The builder for the profile screen in the second branch.
                pageBuilder: (context, state) {
                  return getPage(
                    /// The child for the profile screen.
                    child: const ProfileScreen(),
                    /// The state for the current route.
                    state: state,
                  );
                },
              ),
            ],
          ),
        ],
        /// The builder for the main screen.
        pageBuilder: (
          context,
          state,
          navigationShell,
        ) {
          return getPage(
            /// The child for the main screen.
            child: MainScreen(
              /// The child for the navigation shell.
              child: navigationShell,
            ),
            /// The state for the current route.
            state: state,
          );
        },
      ),
    ],
  );

  /// Returns a page for the given child and state.
  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
      /// The key for the page.
      key: state.pageKey,
      /// The child for the page.
      child: child,
    );
  }
}