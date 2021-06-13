import 'package:flutter/material.dart';
import 'styles.dart';
import 'screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/intro.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  FirebaseAuth auth = FirebaseAuth.instance;
  auth.userChanges().listen((User? user){

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
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return FutureBuilder(
      
      future: _initialization,
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.done){
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
        return Center(child: Text('Loading'));
      }
    );
    
  }
  
}
