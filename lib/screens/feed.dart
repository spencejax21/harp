import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/appbars/feedbar.dart';
import 'package:music_app/screens/bodies/feedbody.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: FeedBar(), body: FeedBody());
  }
}
