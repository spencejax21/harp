import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'appbars/feedbar.dart';
import 'appbars/searchbar.dart';
import 'appbars/profilebar.dart';
import 'bodies/feedbody.dart';
import 'bodies/searchbody.dart';
import 'bodies/profilebody.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/addsong.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  //these lists define different widgets depending on what
  //navbar icon the user selects
  static List<Widget> _barOptions = <Widget>[
    FeedBar(),
    SearchBar(),
    ProfileBar(),
  ];

  static List<Widget> _bodyOptions = <Widget>[
    FeedBody(),
    SearchBody(),
    ProfileBody(),
  ];

  //when a user taps an icon, the app is repainted for the correct screen
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //defining the apps main screen i.e the home, search, and profile views
      appBar: _barOptions.elementAt(_selectedIndex),
      body: _bodyOptions.elementAt(_selectedIndex),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Styles.backgroundColor,
      //     selectedItemColor: Styles.secondaryColor,
      //     unselectedItemColor: Colors.white,
      //     items: [
      //       BottomNavigationBarItem(
      //           activeIcon: Icon(Icons.home, color: Styles.secondaryColor),
      //           icon: Icon(Icons.home_outlined,
      //               color: Colors.white.withOpacity(0.5)),
      //           label: 'home'),
      //       BottomNavigationBarItem(
      //           activeIcon: Icon(Icons.search, color: Styles.secondaryColor),
      //           icon: Icon(Icons.search_outlined,
      //               color: Colors.white.withOpacity(0.5)),
      //           label: 'search'),
      //       BottomNavigationBarItem(
      //           activeIcon:
      //               Icon(Icons.account_circle, color: Styles.secondaryColor),
      //           icon: Icon(Icons.account_circle_outlined,
      //               color: Colors.white.withOpacity(0.5)),
      //           label: 'profile'),
      //     ],
      //     showSelectedLabels: false,
      //     showUnselectedLabels: false,
      //     currentIndex: _selectedIndex,
      //     onTap: _onItemTapped)
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => AddSong()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
