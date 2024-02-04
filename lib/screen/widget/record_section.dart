// ignore_for_file: prefer_const_constructors

import 'package:exar_co/components/custom_button.dart';
import 'package:exar_co/components/output_textfield.dart';
import 'package:exar_co/constants/color.dart';
import 'package:flutter/material.dart';

class record_section extends StatelessWidget {
  const record_section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: height * 0.98,
          width: width * 0.78,
          child: Center(
            child: Column(
              children: [
                Logo(),
                output_textfield(text: 'Audio Transcription'),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                output_textfield(text: 'Doctor\'s Note'),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      height: 60,
                      width: 350,
                      onPressed: () {},
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Record/Resume',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: colorConstant().whiteColor,
                              fontSize: 18,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic_none_outlined,
                              color: colorConstant().whiteColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.attach_file_outlined,
                              color: colorConstant().whiteColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send_outlined,
                              color: colorConstant().whiteColor,
                            ),
                          ),
                        ],
                      ),
                      green: true,
                    ),
                    CustomButton(
                      height: 60,
                      width: 280,
                      onPressed: () {},
                      widget: Text(
                        'Generate note',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: colorConstant().whiteColor,
                          fontSize: 18,
                        ),
                      ),
                      green: true,
                    ),
                    CustomButton(
                      height: 40,
                      width: 200,
                      onPressed: () {},
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Doctor\'s note',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: colorConstant().secondaryColor,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 25,
                            color: colorConstant().secondaryColor,
                          )
                        ],
                      ),
                      green: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 60,
        width: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              'EXAR CoPilot',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ),
            )
          ],
        ),
      );
    });
  }
}
