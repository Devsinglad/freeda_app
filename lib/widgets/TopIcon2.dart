import 'package:flutter/material.dart';

import 'customButton.dart';

class TopIcon2 extends StatelessWidget {
  const TopIcon2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: CustomButton(
              Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              47,
              47,
              Colors.white,
              15,
              Colors.white10.withOpacity(0.25),
              0,
              30),
        ),
        CustomButton(
            Icon(
              Icons.more_horiz_outlined,
              color: Colors.black,
            ),
            47,
            47,
            Colors.white,
            15,
            Colors.white10.withOpacity(0.25),
            0,
            30),
      ],
    );
  }
}
