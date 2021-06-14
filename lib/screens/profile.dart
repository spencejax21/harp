import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/appbars/profilebar.dart';
import 'package:music_app/screens/bodies/profilebody.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: ProfileBar(), body: ProfileBody());
  }
}
