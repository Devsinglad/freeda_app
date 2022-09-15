import 'package:flutter/material.dart';

import 'MyText.dart';

class Services extends StatelessWidget {
  double height;
  double width;
  IconData icon;
  String title;
  // Function onTap;


  Services(
      {Key? key,
      required this.height,
      // required this.onTap,
      required this.width,
      required this.icon,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffF4F5F9),
          ),
          child: IconButton(
            icon: Icon(
              icon,
              color: Color(0xff151940),
              size: 24,
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: 10,
        ),
        MyText(
          title: title,
          size: 18,
          color: Color(0xff151940),
          weight: FontWeight.w500,
        ),
      ],
    );
  }
}
