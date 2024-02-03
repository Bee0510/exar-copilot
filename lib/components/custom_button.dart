import 'package:exar_co/constants/color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget widget;
  final double height;
  final double width;
  final bool green;

  const CustomButton({
    required this.height,
    required this.width,
    required this.onPressed,
    required this.widget,
    required this.green,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: colorConstant().secondaryColor,
            width: 2.0,
          ),
          color: green ? colorConstant().secondaryColor : Colors.transparent,
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(child: widget),
      ),
    );
  }
}
