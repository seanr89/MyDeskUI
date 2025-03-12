import 'package:bookingclient/models/api/location.dart';
import 'package:bookingclient/services/mockapi.service.dart';
import 'package:bookingclient/widgets/location.listview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LocationsPage extends StatefulWidget {
  LocationsPage({super.key});
  static MockAPIService apiService = MockAPIService();

  List<Location> dataSet = [];

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  @override
  void initState() {
    super.initState();
    widget.dataSet = LocationsPage.apiService.getLocations();
  }

  navigateToLocationCreate() {
    //Navigator.pushNamed(context, '/locationcreate');
    //print('navigated to location create');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Navigated to location create'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Locations'),
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back),
          //   onPressed: () {
          //     // ScaffoldMessenger.of(context).showSnackBar(
          //     //   const SnackBar(
          //     //     content: Text('Back events'),
          //     //   ),
          //     // );
          //     context.pop();
          //   },
          // ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    LocationListView(location: widget.dataSet[0]),
                    LocationListView(location: widget.dataSet[1]),
                    LocationListView(location: widget.dataSet[2]),
                  ],
                ),
              ],
            ),
          ),
        )
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     ScaffoldMessenger.of(context).showSnackBar(
        //       const SnackBar(
        //         content: Text('Back button clicked??'),
        //       ),
        //     );
        //     //Navigator.pop(context);
        //   },
        //   tooltip: 'Create',
        //   child: const Icon(Icons.add),
        // ),
        );
  }
}
