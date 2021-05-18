import 'package:flutter/material.dart';
import 'package:music_app/styles.dart';

class SearchBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.white.withOpacity(0.2),
            labelText: 'Search',
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            prefixIcon: Icon(Icons.search, color: Colors.white),
            labelStyle: TextStyle(color: Colors.white),
            contentPadding: EdgeInsets.zero,
            focusedBorder: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              )
            ),
            border: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
          ),
          style: TextStyle(
            color: Colors.white,
          ),
          cursorColor: Colors.white,
          cursorHeight: 22,
        ),
      ),
      centerTitle: true,
      backgroundColor: Styles.backgroundColor,
    );
  }
  
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}