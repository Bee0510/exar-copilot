// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'widget/patient_section.dart';
import 'widget/record_section.dart';

class transcript_screen extends StatefulWidget {
  const transcript_screen({super.key});

  @override
  State<transcript_screen> createState() => _transcript_screenState();
}

class _transcript_screenState extends State<transcript_screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //patient Section
            patient_section(),
            //transcript section
            record_section()
          ],
        ),
      ),
    );
  }
}
