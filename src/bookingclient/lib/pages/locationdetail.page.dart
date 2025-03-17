import 'package:bookingclient/widgets/desk.listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

import '../models/api/location.dart';
import '../services/mockapi.service.dart';

class LocationDetailPage extends StatefulWidget {
  final int id;
  late Location location;
  LocationDetailPage({super.key, required this.id});

  static MockAPIService apiService = MockAPIService();

  @override
  State<LocationDetailPage> createState() => _LocationDetailPageState();
}

class _LocationDetailPageState extends State<LocationDetailPage> {
  @override
  void initState() {
    super.initState();
    // widget.dataSet = LocationsPage.apiService.getLocations();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Detail Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the base page (would prefer locations tbh)
            GoRouter.of(context).go("/");
          },
        ),
        centerTitle: false,
      ),
      body: Row(
        children: [
          const Text('Location Details'),
          Text('Location ID: ${widget.id}'),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  children: const <Widget>[
                    DeskListView(),
                    DeskListView(),
                    DeskListView(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
