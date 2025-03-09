import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LocationDesksPage extends StatelessWidget {
  const LocationDesksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Desks Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const Text(
            //   'Location Desks Page',
            // ),
            ListView(
              shrinkWrap: true,
              children: const <Widget>[
                Center(
                  child: Text('Desks'),
                ),
                ListTile(
                  title: Text('Desk 1'),
                ),
                ListTile(
                  title: Text('Desk 2'),
                ),
                ListTile(
                  title: Text('Desk 3'),
                ),
                ListTile(
                  title: Text('Desk 4'),
                ),
                ListTile(
                  title: Text('Desk 5'),
                ),
              ],
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: onBookingsPressed,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
