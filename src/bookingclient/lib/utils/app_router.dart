import 'dart:js';

import 'package:bookingclient/pages/layoutscaffold.dart';
import 'package:bookingclient/pages/locations.page.dart';
import 'package:bookingclient/pages/settings.page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/home.page.dart';
import '../pages/locationdetail.page.dart';

enum AppRoute {
  home,
  settings,
  locations,
  locationdetails,
  bookings,
}

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

/// The global [GoRouter] instance.
/// This is used to navigate to different pages in the app.
/// It is used in the [LayoutScaffold] to navigate to different pages.
/// It is also used in the [AppShell] to navigate to different pages.
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
                return LocationsPage();
              }),
          GoRoute(
              path: '/location/:id',
              name: AppRoute.locationdetails.name,
              builder: (context, state) {
                final id = int.parse(state.pathParameters[
                    "id"]!); // Get "id" param from URL and cast to int
                return LocationDetailPage(id: id);
              }),
        ]),
        // StatefulShellBranch(routes: [
        //   GoRoute(
        //       path: '/location/:id',
        //       name: AppRoute.locationdetails.name,
        //       builder: (context, state) {
        //         final id = int.parse(state.pathParameters[
        //             "id"]!); // Get "id" param from URL and cast to int
        //         return LocationDetailPage(id: id);
        //     }),
        // ]),
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
