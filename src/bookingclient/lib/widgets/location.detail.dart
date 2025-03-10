import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        height: 175,
        width: double.infinity,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/office.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text('Location 1',
                  textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
            ),
          ],
        ));
  }
}
