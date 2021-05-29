import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_app/screens/appbars/searchbar.dart';
import 'package:music_app/screens/bodies/searchbody.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: SearchBar(), body: SearchBody());
  }
}
