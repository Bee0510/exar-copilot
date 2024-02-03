// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class output_textfield extends StatelessWidget {
  final String text;

  output_textfield({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            fontFamily: 'Poppins',
          ),
        ),
        SizedBox(height: 30),
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.0),
              border: InputBorder.none,
            ),
            maxLines: null,
            keyboardType: TextInputType.multiline,
          ),
        ),
      ],
    );
  }
}
