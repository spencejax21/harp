import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';

class SearchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
          children: [
            Icon(
              Icons.search,
              color: Colors.white.withOpacity(0.3),
              size: 50,
            ),
            Text(
              'Search for a \nuser',
              style:
                  TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )),
        color: Styles.backgroundColor,
        padding: EdgeInsets.only(bottom: 50));
  }
}
