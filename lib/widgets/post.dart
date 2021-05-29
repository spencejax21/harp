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
  bool _isSaved = false;
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 10,
        child: Container(
            child: Container(
                height: 275,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
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
                                child: Image.asset(
                                  'assets/images/ryancircle.png',
                                  width: 20,
                                  height: 20,
                                ),
                                padding: EdgeInsets.only(right: 5)),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(color: Colors.white),
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: 'Ryan Gosling',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(text: ' posted a '),
                                  TextSpan(
                                      text: 'song',
                                      style: TextStyle(
                                        color: Styles.secondaryColor,
                                      ))
                                ]))
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/in_rainbows.png',
                                width: 130, height: 130),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          children: <TextSpan>[
                                        TextSpan(
                                            text: 'Reckoner',
                                            style: TextStyle(fontSize: 22)),
                                        TextSpan(
                                            text: '\nRadiohead',
                                            style: TextStyle(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.normal))
                                      ])),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: GestureDetector(
                                        child: Image.asset(
                                          'assets/images/spotify_green_2.png',
                                          width: 30,
                                          height: 30,
                                        ),
                                        onTap: () {}),
                                  )
                                ]),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        ),
                        Row(
                          children: [
                            Row(children: [
                              GestureDetector(
                                child: (_isLiked == true)
                                    ? Icon(Icons.favorite,
                                        color: Colors.red, size: 30)
                                    : Icon(Icons.favorite_outline,
                                        color: Colors.white, size: 30),
                                onTap: () {
                                  if (_isLiked == true) {
                                    setState(() {
                                      _isLiked = false;
                                    });
                                  } else {
                                    setState(() {
                                      _isLiked = true;
                                    });
                                  }
                                },
                              ),
                              Padding(
                                  child: Text('0',
                                      style: TextStyle(color: Colors.white)),
                                  padding: EdgeInsets.symmetric(horizontal: 5)),
                              Text(' posted 52 seconds ago',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontStyle: FontStyle.italic,
                                      fontSize: 11))
                            ]),
                            GestureDetector(
                              child: (_isSaved == true)
                                  ? Icon(Icons.bookmark,
                                      color: Colors.blue, size: 30)
                                  : Icon(Icons.bookmark_outline,
                                      color: Colors.white, size: 30),
                              onTap: () {
                                if (_isSaved == true) {
                                  setState(() {
                                    _isSaved = false;
                                  });
                                } else {
                                  setState(() {
                                    _isSaved = true;
                                  });
                                }
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ))),
            color: Styles.backgroundColor));
  }
}
