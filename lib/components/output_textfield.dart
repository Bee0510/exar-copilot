// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class output_textfield extends StatelessWidget {
  final String text;

  output_textfield({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final height = constraints.maxHeight;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            // constraints.maxWidth.toString(),
            style: TextStyle(
              fontSize: height > 700 ? 32 : 20,
              fontWeight: FontWeight.w900,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Container(
            height: height > 700
                ? MediaQuery.of(context).size.height * 0.30
                : MediaQuery.of(context).size.height * 0.32,
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
    });
  }
}
