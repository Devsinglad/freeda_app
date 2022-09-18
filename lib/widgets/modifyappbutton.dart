import 'package:flutter/material.dart';

class AppButtonSmall extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  IconData? icon;
  double size;
  bool? isIcon;
  AppButtonSmall(
      {Key? key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.size,
      this.isIcon = false,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(3.0, 3.0),
          ),
        ],
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
      ),
      child: Center(
        child: isIcon == false
            ? Text(
                text,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              )
            : Icon(
                icon,
                color: textColor,
              ),
      ),
    );
  }
}
