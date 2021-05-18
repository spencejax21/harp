import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';

class AddSong extends StatefulWidget {
  @override
  _AddSongState createState() => _AddSongState();
}

class _AddSongState extends State<AddSong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post a song'),
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
