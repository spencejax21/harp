import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:music_app/screens/notifications.dart';
import 'package:music_app/screens/addsong.dart';
import 'package:music_app/screens/profile.dart';
import 'package:music_app/screens/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:badges/badges.dart';

class FeedBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      floating: true,
      title: Padding(
          padding: EdgeInsets.all(10),
          child: (Text.rich(TextSpan(children: [
            //WidgetSpan(child: Icon(Icons.music_note, color: Styles.secondaryColor)),
            TextSpan(
                text: 'Feed',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700)),
          ])))),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: () {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => Search()));
          },
        ),
        Badge(
            child: IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => Notifications()));
              },
            ),
            badgeContent: Text('3'),
            badgeColor: Styles.secondaryColor,
            showBadge: true,
            position: BadgePosition.topEnd(top: 5, end: 5),
            animationType: BadgeAnimationType.slide),
        Padding(
            child: GestureDetector(
              child: Image.asset(
                'assets/images/ryancircle.png',
                width: 35,
                height: 35,
              ),
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => Profile()));
              },
            ),
            padding: EdgeInsets.symmetric(horizontal: 10)),
      ],
      // leading: IconButton(
      //     icon: Icon(
      //       Icons.notifications_none,
      //       color: Colors.white,
      //     ),
      //     onPressed: () {
      //       Navigator.push(context,
      //           CupertinoPageRoute(builder: (context) => Notifications()));
      //     }),
      centerTitle: false,
      backgroundColor: Styles.backgroundColor,
    );
  }

  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
