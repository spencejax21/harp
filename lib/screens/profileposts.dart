import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/widgets/post.dart';

class ProfilePosts extends StatefulWidget {
  final List _posts = ['Through the Wire', 'Runaway', 'Heartless'];

  _ProfilePostsState createState() => _ProfilePostsState();
}

class _ProfilePostsState extends State<ProfilePosts> {
  @override
  Widget build(BuildContext context) {
    return Flexible(child: ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Post(this.widget._posts[index]);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: 3
    ));
  }
}