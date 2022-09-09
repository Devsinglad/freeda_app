import 'package:flutter/material.dart';

import 'MyText.dart';
import 'customButton.dart';

Widget AccountDetailWidget({
  required String title,
  required String bic,
  required String iban,
  required String address,
}) {
  return CustomButton(
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  MyText(
                    title: 'Account Holder',
                    size: 14,
                    color: Color(0xff151940),
                    weight: FontWeight.w600,
                  ),
                  MyText(
                    title: title,
                    size: 14,
                    color: Color(0xffC4C4C4),
                    weight: FontWeight.w600,
                  ),
                ],
              ),
              Column(
                children: [
                  MyText(
                    title: 'BIC',
                    size: 14,
                    color: Color(0xff151940),
                    weight: FontWeight.w600,
                  ),
                  MyText(
                    title: title,
                    size: 14,
                    color: Color(0xffC4C4C4),
                    weight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  MyText(
                    title: 'IBAN',
                    size: 14,
                    color: Color(0xff151940),
                    weight: FontWeight.w600,
                  ),
                  MyText(
                    title: iban,
                    size: 14,
                    color: Color(0xffC4C4C4),
                    weight: FontWeight.w600,
                  ),
                ],
              ),
              Column(
                children: [
                  MyText(
                    title: 'Address',
                    size: 14,
                    color: Color(0xff151940),
                    weight: FontWeight.w600,
                  ),
                  MyText(
                    title: address,
                    size: 14,
                    color: Color(0xffC4C4C4),
                    weight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      200,
      double.maxFinite,
      Colors.transparent,
      0,
      Colors.transparent,
      0,
      0);
}
