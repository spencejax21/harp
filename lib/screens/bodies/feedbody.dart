import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/post.dart';

class FeedBody extends StatefulWidget {
  final List _posts = ['Through the Wire', 'Runaway', 'Heartless'];

  _FeedBodyState createState() => _FeedBodyState();

}

class _FeedBodyState extends State<FeedBody> {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        physics: ClampingScrollPhysics(),
        itemCount: this.widget._posts.length,
        itemBuilder: (BuildContext context, int index) {
          return Post(this.widget._posts[index]);
        });
  }

}
