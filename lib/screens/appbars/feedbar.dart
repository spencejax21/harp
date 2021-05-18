import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:music_app/screens/notifications.dart';
import 'package:music_app/screens/addsong.dart';
import 'package:flutter/cupertino.dart';

class FeedBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: (Text.rich(TextSpan(children: [
        WidgetSpan(child: Icon(Icons.music_note, color: Styles.secondaryColor)),
        TextSpan(text: 'harp'),
      ]))),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => Notifications()));
            }),
        IconButton(
          icon: Icon(Icons.add_box_outlined, color: Styles.secondaryColor),
          onPressed: () {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => AddSong()));
          },
        ),
      ],
      centerTitle: true,
      backgroundColor: Styles.backgroundColor,
    );
  }

  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
