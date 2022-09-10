import 'package:flutter/material.dart';

import '../widget/reuseablewidget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 195,),
          logowidget('lib/screenss/welcomescrn.dart'),
          Text('Welcome',style: TextStyle(
            fontSize: 44,
            fontFamily: 'Gilroy-Bold',
            color: Color(0xffFFFFFF),),
      ),
          Text('Stay on top by effortlessly tracking your\n subscriptions & bills'),
          Container(height: 94,
            width: 94,
            color: Colors.white,
            child: Center(
              child: logowidget('images/arrow.png')
              ),
            ),
    ]
    ));
  }
}
