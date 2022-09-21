import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Widget widget;
  double height;
  double width;
  Color color;
  Color offcolor;
  double radius;
  double Xheight;
  double Ywidth;

  CustomButton(
    this.widget,
    this.height,
     this.width,
    this.color,
    this.radius,
    this.offcolor,
    this.Xheight,
    this.Ywidth,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        boxShadow: [
          BoxShadow(
            color: offcolor,
            blurRadius: radius,
            offset: Offset(Xheight, Ywidth),
          ),
        ],
      ),
      child: widget,
    );
  }
}
