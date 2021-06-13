import 'package:flutter/material.dart';
import 'styles.dart';
import 'screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/intro.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() async {

  bool _signedIn;

  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  bool _firstOpen = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'harp',
      home: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (_, snapshot) {

            if (snapshot.connectionState == ConnectionState.done) {
              FirebaseAuth auth = FirebaseAuth.instance;
              if(auth.currentUser != null){
                return Home();
              }
              return Intro();
            }
            return Center(
              child: SpinKitWave(
                color: Colors.white,
                size: 50
              )
            );
          }),
      theme: new ThemeData(
        scaffoldBackgroundColor: Styles.backgroundColor,
        accentColor: Styles.secondaryColor,
      ),
    );
  }
}
