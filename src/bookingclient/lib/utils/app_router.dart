import 'dart:js';

import 'package:bookingclient/pages/layoutscaffold.dart';
import 'package:bookingclient/pages/locations.page.dart';
import 'package:bookingclient/pages/settings.page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/home.page.dart';

enum AppRoute {
  home,
  settings,
  locations,
  search,
}

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final goRouter =
    GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: "/", routes: [
  StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          LayoutScaffold(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/',
            name: AppRoute.home.name,
            builder: (context, state) => const HomePage(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
              path: '/locations',
              name: AppRoute.locations.name,
              builder: (context, state) {
                return const LocationsPage();
              })
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
              path: '/settings',
              name: AppRoute.settings.name,
              builder: (context, state) {
                return const SettingsPage();
              }),
        ]),
      ])
]);
