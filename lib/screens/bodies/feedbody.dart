import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/widgets/post.dart';

class FeedBody extends StatefulWidget {
  final List _posts = ['Through the Wire', 'Runaway', 'Heartless'];

  _FeedBodyState createState() => _FeedBodyState();
}

class _FeedBodyState extends State<FeedBody> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
                  child: Post(this.widget._posts[index]),
                  padding: EdgeInsets.all(15),
                ),
            childCount: 3));
  }
}
