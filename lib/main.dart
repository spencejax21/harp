import 'package:flutter/material.dart';
import 'styles.dart';
import 'screens/home.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'harp',
      home: Home(title: 'harp'),
      theme: new ThemeData(
          scaffoldBackgroundColor: Styles.backgroundColor,
          accentColor: Styles.secondaryColor,
      ),
    );
  }
}
