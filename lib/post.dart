import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
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
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.transparent
            ),
            color: Styles.postColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      child: Image.asset('assets/images/ryancircle.png', width: 20, height: 20,),
                      padding: EdgeInsets.only(right: 5)
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(text: 'Ryan Gosling', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' posted a '),
                          TextSpan(text: 'song', style: TextStyle(color: Styles.secondaryColor,))
                        ]
                      )
                    )
                  ],
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )
          )  
        ),
        color: Styles.backgroundColor
      )
    );
  }
}
