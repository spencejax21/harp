import 'package:flutter/material.dart';
import 'package:music_app/screens/editprofile.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

/*
--Settings List--

Edit Profile
Private Account
Notifications
o Follow requests
o Posts from friends
o Likes
Log out
Privacy Policy

Copyright Info
*/

class _SettingsState extends State<Settings> {
  bool _private = false;
  bool _friends = true;
  bool _posts = true;
  bool _likes = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          leading: IconButton(
              icon: Icon(Icons.west_rounded, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              }),
          titleTextStyle: TextStyle(fontFamily: 'Serif'),
          centerTitle: true,
          backgroundColor: Styles.backgroundColor,
          elevation: 0,
        ),
        body: Padding(
            child: SettingsList(
              backgroundColor: Styles.backgroundColor,
              sections: [
                SettingsSection(
                  title: 'Account',
                  tiles: [
                    SettingsTile(
                      title: 'Edit Profile',
                      titleTextStyle: TextStyle(color: Colors.white),
                      onPressed: (BuildContext context) {
                        Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => EditProfile()));
                      },
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.4)
                      ),
                      
                    ),
                    SettingsTile.switchTile(
                      title: 'Private Account',
                      titleTextStyle: TextStyle(color: Colors.white),
                      switchValue: _private,
                      onToggle: (bool value) {
                        setState(() {
                          _private = value;
                        });
                      },
                      switchActiveColor: Styles.secondaryColor,
                      subtitle: 'Only friends can view your profile',
                      subtitleTextStyle:
                          TextStyle(color: Colors.white.withOpacity(0.4)),
                    )
                  ],
                ),
                SettingsSection(
                  title: 'Notifications',
                  tiles: [
                    SettingsTile.switchTile(
                      title: 'Friend requests',
                      titleTextStyle: TextStyle(color: Colors.white),
                      switchValue: _friends,
                      onToggle: (bool value) {
                        setState(() {
                          _friends = value;
                        });
                      },
                      switchActiveColor: Styles.secondaryColor,
                    ),
                    SettingsTile.switchTile(
                      title: 'Posts from friends',
                      titleTextStyle: TextStyle(color: Colors.white),
                      switchValue: _posts,
                      onToggle: (bool value) {
                        setState(() {
                          _posts = value;
                        });
                      },
                      switchActiveColor: Styles.secondaryColor,
                    ),
                    SettingsTile.switchTile(
                      title: 'Likes',
                      titleTextStyle: TextStyle(color: Colors.white),
                      switchValue: _likes,
                      onToggle: (bool value) {
                        setState(() {
                          _likes = value;
                        });
                      },
                      switchActiveColor: Styles.secondaryColor,
                    ),
                  ],
                ),
                SettingsSection(
                  title: 'Other',
                  tiles: [
                    SettingsTile(
                      title: 'Privacy Policy',
                      titleTextStyle: TextStyle(color: Colors.white),
                      onPressed: (BuildContext context) {},
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.4)),
                    ),
                    SettingsTile(
                      title: 'Log Out',
                      titleTextStyle: TextStyle(color: Styles.secondaryColor),
                      onPressed: (BuildContext context) {},
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.4)),
                    ),
                  ],
                )
              ],
            ),
            padding: EdgeInsets.only(top: 10, left: 10, right: 10)));
  }
}
