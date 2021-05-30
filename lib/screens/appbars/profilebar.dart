import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:music_app/screens/settings.dart';
import 'package:flutter/cupertino.dart';

class ProfileBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Profile'),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => Settings()));
            })
      ],
      titleTextStyle: TextStyle(fontFamily: 'Serif'),
      centerTitle: true,
      backgroundColor: Styles.backgroundColor,
      elevation: 0,
    );
  }

  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
