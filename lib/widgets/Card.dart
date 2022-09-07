import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/customButton.dart';

class CardItems extends StatelessWidget {
  const CardItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Text(
              'YOU ARE SENDING',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '\$200.00',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 40,
              ),
            ),
            Divider(
              color: Color(0xffD8DEF6),
              thickness: 3,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'USD',
                  style: TextStyle(
                    color: Color(0xff7F8192),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Color(0xff7F8192),
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 14),
            Divider(
              color: Color(0xffD8DEF6),
              thickness: 3,
            ),
          ],
        ),
      ),
      243,
      332,
      Color(0xfff5F6FA),
      10,
      Colors.transparent,
      0,
      0,
    );
  }
}
