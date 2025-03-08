import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Destination {
  final String label;
  final IconData icon;

  const Destination({required this.label, required this.icon});
}

const Destinations = <Destination>[
  Destination(label: 'Home', icon: Icons.home),
  Destination(label: 'Location', icon: Icons.search),
  Destination(label: 'Settings', icon: Icons.settings),
];
