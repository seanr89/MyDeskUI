import 'package:bookingclient/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// The main application widget.
/// This widget is the root of the application.
/// It is responsible for setting up the application's theme and routing.
/// The application's theme is set to dark mode.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //routerConfig: goRouter,
      title: 'Book Me',
      debugShowCheckedModeBanner: true,
      routerConfig: goRouter,
      theme: ThemeData.dark(),
    );
  }
}
