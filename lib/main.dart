import 'package:flutter/material.dart';
import 'styles.dart';
import 'screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/intro.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {

  bool _signedIn;

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseAuth auth = FirebaseAuth.instance;

  auth.userChanges().listen((User? user){
    if(user == null){
      _signedIn = false;
      print('User is not signed in');
    }
    else{
      _signedIn = true;
      print('User is signed in!');
    }
  });
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
      home: (_firstOpen == true) ? Intro() : Home(),
      theme: new ThemeData(
        scaffoldBackgroundColor: Styles.backgroundColor,
        accentColor: Styles.secondaryColor,
      ),
    );
  }
}
