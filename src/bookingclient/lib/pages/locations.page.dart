import 'package:bookingclient/services/mockapi.service.dart';
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
        title: const Text('Locations Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Locations Page',
            ),
            ListView(
              shrinkWrap: true,
              children: const <Widget>[
                Center(
                  child: Text('Locations'),
                ),
                ListTile(
                  title: Text('Location 1'),
                ),
                ListTile(
                  title: Text('Location 2'),
                ),
                ListTile(
                  title: Text('Location 3'),
                ),
                ListTile(
                  title: Text('Location 4'),
                ),
                ListTile(
                  title: Text('Location 5'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Back',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
