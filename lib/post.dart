import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';

class Post extends StatefulWidget {
  String _song;

  Post(String songName) {
    this._song = songName;
  }
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Material(
      //elevation: 10,
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.transparent
            ),
            color: Styles.postColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(this.widget._song),
          height: 250
        ),
        color: Styles.backgroundColor
      )
    );
  }
}
