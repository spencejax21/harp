import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';

class FeedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        physics: ClampingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Post();
        });
  }
}

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Card(
      elevation: 10,
    )));
  }
}
