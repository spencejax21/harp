import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        leading: IconButton(
            icon: Icon(Icons.west_rounded, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        titleTextStyle: TextStyle(fontFamily: 'Serif'),
        centerTitle: true,
        backgroundColor: Styles.backgroundColor,
        elevation: 0,
      ),
    );
  }
}
