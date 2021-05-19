import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit profile'),
        leading: IconButton(
            icon: Icon(Icons.west_rounded, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        titleTextStyle: TextStyle(fontFamily: 'Serif'),
        centerTitle: true,
        backgroundColor: Styles.backgroundColor,
        elevation: 0,
        actions: [
          Padding(
              padding: EdgeInsets.all(12),
              child: ButtonTheme(
                  child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Save', style: TextStyle(color: Styles.secondaryColor)),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Styles.backgroundColor),
                ),
              )))
        ],
      ),
    );
  }
}
