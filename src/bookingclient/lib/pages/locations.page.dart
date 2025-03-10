import 'package:bookingclient/services/mockapi.service.dart';
import 'package:bookingclient/widgets/location.detail.dart';
import 'package:flutter/material.dart';

class LocationsPage extends StatefulWidget {
  const LocationsPage({super.key});

  static MockAPIService apiService = MockAPIService();

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  navigateToLocationCreate() {
    //Navigator.pushNamed(context, '/locationcreate');
    print('navigated to location create');
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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Back events'),
                ),
              );
              //Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  children: const <Widget>[
                    LocationDetail(),
                    LocationDetail(),
                    LocationDetail(),
                    LocationDetail(),
                  ],
                ),
              ],
            ),
          ),
        )
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       ListView(
        //         shrinkWrap: true,
        //         children: const <Widget>[
        //           LocationDetail(),
        //           Center(child: LocationDetail()),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
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
