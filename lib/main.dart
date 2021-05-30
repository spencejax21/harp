import 'package:flutter/material.dart';
import 'styles.dart';
import 'screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  bool _firstOpen = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'harp',
      home: (_firstOpen == true) ? Intro() : Home(title: 'harp'),
      theme: new ThemeData(
        scaffoldBackgroundColor: Styles.backgroundColor,
        accentColor: Styles.secondaryColor,
      ),
    );
  }
}
