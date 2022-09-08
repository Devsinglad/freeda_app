import 'package:flutter/material.dart';

BoxDecoration customDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Color(0xff6F889D).withOpacity(.25),
        offset: Offset(0, 30),
        blurRadius: 65,
        spreadRadius: 0,
      )
    ],
    image: DecorationImage(image: AssetImage('assets/images/back-arrow.png'))
);
BoxDecoration customDecoration2 = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Color(0xff6F889D).withOpacity(.25),
        offset: Offset(0, 30),
        blurRadius: 65,
        spreadRadius: 0,
      )
    ],
);
class customContainer extends StatelessWidget {
  final double height;
  final Widget? child;
  final double width;
  final EdgeInsetsGeometry? customMargin;
  final Decoration customizedDecoration;
  const customContainer({
    Key? key, required this.height, required this.width, this.customMargin,
    required this.customizedDecoration, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,height: height,
      margin: customMargin,
      decoration: customizedDecoration,
      child: child,
    );
  }
}
Row topRow() {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      customContainer(width: 47, height: 47,customizedDecoration:
      customDecoration,),
      customContainer(height: 47, width: 47, customizedDecoration:
      customDecoration.copyWith(image: DecorationImage(image:
      AssetImage('assets/images/option-icon.png'))),)
    ],
  );
}
TextStyle customTextDecor = TextStyle(
  color: Color(0xff151940), fontWeight: FontWeight.w500,
  fontSize:18,
);