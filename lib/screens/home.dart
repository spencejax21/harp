import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'appbars/feedbar.dart';
import 'appbars/searchbar.dart';
import 'appbars/profilebar.dart';
import 'bodies/feedbody.dart';
import 'bodies/searchbody.dart';
import 'bodies/profilebody.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/addsong.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [FeedBar(), FeedBody()],
        physics: BouncingScrollPhysics(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => AddSong()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
