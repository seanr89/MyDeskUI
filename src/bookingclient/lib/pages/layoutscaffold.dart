import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/destination.dart';

/// A stateful widget that manages the navigation state of the app.
/// Supports the navigation of the app to different branches.
class LayoutScaffold extends StatelessWidget {
  const LayoutScaffold({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: navigationShell,
        bottomNavigationBar: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: navigationShell.goBranch,
          destinations: Destinations.map((destination) => NavigationDestination(
                icon: Icon(destination.icon),
                label: destination.label,
                selectedIcon: Icon(destination.icon),
              )).toList(),
        ),
      );
}
