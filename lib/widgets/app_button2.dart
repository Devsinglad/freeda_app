import 'package:flutter/material.dart';

class AppButtonBig extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  IconData? icon;
  double height;
  double width;
  double value;
  double? size;
  bool? isIcon;
  AppButtonBig(
      {Key? key,
      required this.textColor,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.height,
      required this.width,
      required this.value,
      this.isIcon = false,
      this.size,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(value),
      ),
      child: Center(
        child: isIcon == false
            ? Text(
                text,
                style: TextStyle(
                  fontSize: size,
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
