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
                              Text('⭐ Favorite Songs', style: TextStyle(color: Styles.secondaryColor, fontWeight: FontWeight.bold, fontSize: 20),),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Through The Wire',
                                      ),
                                      TextSpan(
                                        text: ' Kanye West',
                                        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16)
                                      )
                                    ]
                                  )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'All Falls Down',
                                      ),
                                      TextSpan(
                                        text: ' Kanye West',
                                        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16)
                                      )
                                    ]
                                  )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Jesus Walks',
                                      ),
                                      TextSpan(
                                        text: ' Kanye West',
                                        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16)
                                      )
                                    ]
                                  )
                                ),
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
                          Text('🎸 Favorite Genre',style: TextStyle(color: Styles.secondaryColor, fontWeight: FontWeight.bold, fontSize: 20)),
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
                          Text('🎤 Favorite Artist',style: TextStyle(color: Styles.secondaryColor, fontWeight: FontWeight.bold, fontSize: 20)),
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
                          Text('🏆 Favorite Album',style: TextStyle(color: Styles.secondaryColor, fontWeight: FontWeight.bold, fontSize: 20)),
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                              TextSpan(
                                  text: 'In Rainbows',
                                  style: TextStyle(fontSize: 30)),
                              TextSpan(
                                  text: ' Radiohead',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 22))
                              ]
                            )
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
