import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';

class ProfileFavorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Row(
        children: [
          Container(
            child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Songs',
                    style: TextStyle(
                        color: Styles.secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Image.asset('assets/images/in_rainbows.png',
                        width: 30, height: 30),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'Through The Wire',
                            ),
                            TextSpan(
                                text: ' \nKanye West',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal))
                          ])),
                    ),
                    
                  ]),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Image.asset('assets/images/in_rainbows.png',
                        width: 30, height: 30),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'So What',
                            ),
                            TextSpan(
                                text: ' \nMiles Davis',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal))
                          ])),
                    ),
                    
                  ]),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Image.asset('assets/images/in_rainbows.png',
                        width: 30, height: 30),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'Reckoner',
                            ),
                            TextSpan(
                                text: ' \nRadiohead',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal))
                          ])),
                    ),
                    
                  ]),
                ],
              ),
            ],
          )),
        ],
      ),
      Row(children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Genre',
                  style: TextStyle(
                      color: Styles.secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text('Hard Rock',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30))
            ],
          ),
        ),
      ]),
      Row(children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Artist',
                  style: TextStyle(
                      color: Styles.secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Text('Miles Davis',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30))
            ],
          ),
        ),
      ]),
      Row(children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Album',
                  style: TextStyle(
                      color: Styles.secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Row(children: [
                Image.asset('assets/images/in_rainbows.png',
                    width: 50, height: 50),
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'In Rainbows',
                            style: TextStyle(fontSize: 28)),
                        TextSpan(
                            text: ' \nRadiohead',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 20,
                                fontWeight: FontWeight.normal))
                      ])),
                ),
                
              ]),
            ],
          ),
        ),
      ]),
    ]);
  }
}
