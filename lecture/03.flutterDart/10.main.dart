import 'package:flutter/material.dart';

import '10.ScreenA.dart';
import '10.ScreenB.dart';
import '10.ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC()
      },
    );
  }
}