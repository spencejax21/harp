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
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    color: Colors.white.withOpacity(0.5)
                  )
                ),
                Row(
                  children: [
                    Container(
                      //color: Styles.postColor,
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Favorite Songs', style: TextStyle(color: Styles.secondaryColor, fontWeight: FontWeight.bold, fontSize: 20),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/in_rainbows.png', width: 30, height: 30),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Through The Wire',
                                          ),
                                          TextSpan(
                                            text: ' \nKanye West',
                                            style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16, fontWeight: FontWeight.normal)
                                          )
                                        ]
                                      )
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Image.asset(
                                      'assets/images/spotify_green_2.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                    onTap: () {}
                                  ),
                                ]
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/in_rainbows.png', width: 30, height: 30),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'So What',
                                          ),
                                          TextSpan(
                                            text: ' \nMiles Davis',
                                            style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16, fontWeight: FontWeight.normal)
                                          )
                                        ]
                                      )
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Image.asset(
                                      'assets/images/spotify_green_2.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                    onTap: () {}
                                  ),
                                ]
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/in_rainbows.png', width: 30, height: 30),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Reckoner',
                                          ),
                                          TextSpan(
                                            text: ' \nRadiohead',
                                            style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16, fontWeight: FontWeight.normal)
                                          )
                                        ]
                                      )
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Image.asset(
                                      'assets/images/spotify_green_2.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                    onTap: () {}
                                  ),
                                ]
                              ),
                            ],
                          ),
                        ],
                      )
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Favorite Genre',style: TextStyle(color: Styles.secondaryColor, fontWeight: FontWeight.bold, fontSize: 20)),
                          Text('Hard Rock', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30))
                        ],
                      ),
                    ),
                  ]
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Favorite Artist',style: TextStyle(color: Styles.secondaryColor, fontWeight: FontWeight.bold, fontSize: 20)),
                          Text('Miles Davis', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30))
                        ],
                      ),
                    ),
                  ]
                ),
                
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Favorite Album',style: TextStyle(color: Styles.secondaryColor, fontWeight: FontWeight.bold, fontSize: 20)),
                          Row(
                            children: [
                              Image.asset('assets/images/in_rainbows.png', width: 50, height: 50),
                              Padding(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                    TextSpan(
                                        text: 'In Rainbows',
                                        style: TextStyle(fontSize: 28)),
                                    TextSpan(
                                        text: ' \nRadiohead',
                                        style: TextStyle(
                                            color: Colors.white.withOpacity(0.5),
                                            fontSize: 20, fontWeight: FontWeight.normal))
                                    ]
                                  )
                                ),
                              ),
                              GestureDetector(
                                    child: Image.asset(
                                      'assets/images/spotify_green_2.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                    onTap: () {}
                                  ),
                            ]
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 35, right: 35, top: 20)));
  }
}
