import 'package:flutter/material.dart';

import 'MyText.dart';
import 'customButton.dart';

Widget userBalance({
  required String imageUrl,
  required String amount,
  required String currency,
}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: CustomButton(
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imageUrl),
          MyText(
            title: amount,
            size: 28,
            color: Colors.black,
            weight: FontWeight.w600,
          ),
          MyText(
            title: currency,
            size: 14,
            color: Color(0xff7F8192),
            weight: FontWeight.w600,
          )
        ],
      ),
      157,
      138,
      Colors.white,
      10,
      Color(0xff8A959E).withOpacity(0.1),
      0,
      15,
    ),
  );
}
