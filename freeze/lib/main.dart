import 'package:flutter/material.dart';
import 'package:freeze/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FREEZE',
      home: Splash(),
    );
  }
}
