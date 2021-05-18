import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:music_app/screens/editprofile.dart';
import 'package:flutter/cupertino.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/ryancircle.png',
                        width: 90, height: 90),
                    Container(
                      height: 90,
                      child: IntrinsicWidth(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(children: [
                              Text('Ryan Gosling',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            Container(
                              child: Row(
                                children: [
                                  Column(children: [
                                    Icon(
                                      Icons.music_note,
                                      color: Colors.white,
                                    ),
                                    Text('25',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))
                                  ]),
                                  Column(
                                    children: [
                                      GestureDetector(
                                          onTap: () {},
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          )),
                                      Text('256',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ],
                                  )
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                              ),
                            )
                          ],
                        ),
                      ),
                      //color: Colors.red
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                )
              ],
            ),
            padding: EdgeInsets.only(left: 35, right: 35, top: 20)));
  }
}
