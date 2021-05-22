import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/widgets/profilefavorites.dart';

class ProfileBody extends StatefulWidget {
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  int _selectedTabBar = 0;
  static List<Widget> _tabViews = [
    ProfileFavorites(),
    Center(child: Text('Posts', style: TextStyle(color: Colors.red)))
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: DefaultTabController(
            initialIndex: 0,
            length: 2,
            child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/ryancircle.png',
                            width: 75, height: 75),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: TabBar(
                        tabs: [
                          Tab(
                            text: 'Favorites',
                          ),
                          Tab(text: 'Posts')
                          //Tab(text: 'Posts'),
                        ],
                        onTap: (int index) {
                          print(index);
                          setState(() {
                            _selectedTabBar = index;
                          });
                        },
                        labelColor: Styles.secondaryColor,
                        unselectedLabelColor: Colors.white.withOpacity(0.7),
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(child: _tabViews[_selectedTabBar])
                  ],
                ),
                padding: EdgeInsets.only(left: 35, right: 35, top: 10))));
  }
}
