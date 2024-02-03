// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class search_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      width: 360,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.grey),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 8.0),
          k_widget('A'),
          SizedBox(width: 8.0),
          k_widget('K'),
        ],
      ),
    );
  }

  Container k_widget(String txt) {
    return Container(
      width: 25.0,
      height: 25.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.grey.withOpacity(0.5),
      ),
      child: Center(
          child: Text(
        txt,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      )),
    );
  }
}
