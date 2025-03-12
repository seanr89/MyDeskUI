import 'package:flutter/material.dart';

class LocationListView extends StatelessWidget {
  const LocationListView({super.key});

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
            Container(
              alignment: Alignment.centerLeft,
              child: const Text('Address 1',
                  textAlign: TextAlign.left, style: TextStyle(fontSize: 15)),
            ),
            Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    //Navigator.pushNamed(context, '/locationdetail');
                    print('navigated to location detail');
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Navigated to location detail'),
                      ),
                    );
                  },
                  child: Text('TextButton'),
                ))
          ],
        ));
  }
}
