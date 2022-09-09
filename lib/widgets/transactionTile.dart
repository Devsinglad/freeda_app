import 'package:flutter/material.dart';

import 'MyText.dart';
import 'customButton.dart';

Widget transactionTile({
  required String imageUrl,
  required String title,
  required String subTitle,
  required String amount,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Row(
      children: [
        CustomButton(
          Image.asset(imageUrl),
          52,
          54,
          Colors.white,
          10,
          Colors.black.withOpacity(0.3),
          0,
          3,
        ),
        SizedBox(
          width: 11,
        ),
        Column(
          children: [
            MyText(
              title: title,
              size: 18,
              color: Color(0xff151940),
              weight: FontWeight.w600,
            ),
            MyText(
              title: subTitle,
              size: 12,
              color: Color(0xff7F8192),
              weight: FontWeight.w400,
            ),
          ],
        ),
        SizedBox(
          width: 100,
        ),
        MyText(
          title: amount,
          size: 14,
          color: Color(0xff151940),
          weight: FontWeight.w700,
        ),
      ],
    ),
  );
}
