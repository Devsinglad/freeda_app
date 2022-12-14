import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/AppDrawer.dart';

import 'customButton.dart';

class Top extends StatelessWidget {
  const Top({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            print('now pressed');

            print('pressed');
          },
          child: CustomButton(
            Icon(
              Icons.widgets_outlined,
            ),
            47,
            47,
            Color(0xffFFFFFF),
            15,
            Color(0xff6F889D).withOpacity(0.25),
            0,
            30,
          ),
        ),
        CustomButton(
          Icon(
            Icons.more_horiz_outlined,
          ),
          47,
          47,
          Color(0xffFFFFFF),
          15,
          Color(0xff6F889D).withOpacity(0.25),
          0,
          30,
        ),
      ],
    );
  }
}
