import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LocationDetailPage extends StatefulWidget {
  final int id;
  const LocationDetailPage({super.key, required this.id});

  @override
  State<LocationDetailPage> createState() => _LocationDetailPageState();
}

class _LocationDetailPageState extends State<LocationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
