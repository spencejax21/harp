import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/widgets/profilefavorites.dart';
import 'package:music_app/screens/editprofile.dart';
import 'package:music_app/screens/profileposts.dart';

class ProfileBody extends StatefulWidget {
  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  int _selectedTabBar = 0;
  static List<Widget> _tabViews = [
    ProfileFavorites(),
    ProfilePosts(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: DefaultTabController(
            initialIndex: 0,
            length: 2,
            //entire profile page
            child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //profile picture and follow button section
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset('assets/images/ryancircle.png',
                              width: 80, height: 80),
                          SizedBox(
                            height: 32,
                            child: OutlinedButton(
                              onPressed: (){
                                Navigator.push(context,
                                  CupertinoPageRoute(
                                    builder: (context) => EditProfile()
                                  )
                                );
                              },
                              child: Text('Edit Profile', style: TextStyle(fontSize: 12, color: Styles.secondaryColor)),
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                ).copyWith(
                                  side: MaterialStateProperty.resolveWith<BorderSide>(
                                    (Set<MaterialState> states) {
                                      return BorderSide(
                                        color: Styles.secondaryColor,
                                        width: 2,
                                      );
                                    }
                                  )
                                )
                            )
                          )
                        ],
                      ),
                    ),

                    //name section
                    Container(
                      padding: EdgeInsets.only(top: 15, right: 15, left: 15),
                      child: Row(
                        children: [Text('Ryan Gosling', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600))],
                      ),
                    ),

                    //user handle section
                    Container(
                      padding: EdgeInsets.only(top: 8,right: 15, left: 15),
                      child: Row(
                        children: [Text('@spencejax21', style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16, fontStyle: FontStyle.italic))],
                      ),
                    ),

                    //friends and posts
                    Container(
                      padding: EdgeInsets.only(top: 8,right: 15, left: 15, bottom:6),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: '420 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                TextSpan(text: 'friends', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14))
                              ],
                              style: TextStyle(color: Colors.white)
                            )
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: '    69 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                TextSpan(text: 'posts', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14))
                              ],
                              style: TextStyle(color: Colors.white)
                            )
                          ),
                        ],
                      ),
                    ),
                    
                    //bio
                    // Container(
                    //   padding: EdgeInsets.only(top: 12,right: 15, left: 15, bottom: 10),
                    //   child: Row(
                    //     children: [Text('thats a nice shirt \ndo they make it for men', style: TextStyle(color: Colors.white, fontSize: 16,))],
                    //   ),
                    // ),

                    //favorites and posts section
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: TabBar(
                        tabs: [
                          Tab(
                            icon: Icon(Icons.star),
                          ),
                          Tab(icon: Icon(Icons.music_note))
                        ],
                        onTap: (int index) {
                          print(index);
                          setState(() {
                            _selectedTabBar = index;
                          });
                        },
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.white.withOpacity(0.5),
                        indicatorColor: Colors.white,
                      ),
                    ),
                    Container(child: _tabViews[_selectedTabBar])
                  ],
                ),
                padding: EdgeInsets.only(left: 20, right: 20, top: 10))));
  }
}
