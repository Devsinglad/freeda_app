import 'package:flutter/material.dart';

import '../widget/reuseablewidget.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [ Padding(
          padding: const EdgeInsets.only(top: 93.0, left: 341),
          child: Text('SKIP',style: TextStyle(color: Color(0xff151940)),),
        ),
          SizedBox(height: 34,),
          logowidget('images/onboard3.png'),
          SizedBox(height:53),
          Center(child: Text('    Reach your\n goals with ease',
            style: TextStyle(
              fontSize: 44,
              fontFamily: 'Gilroy-Bold',
              color: Color(0xff151940),
            ),
          ),
          ),
          SizedBox(height: 38,),
          Text('Use the smart saving features to\nmanage your future goals and needs',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'inter',
              color: Color(0xff151940),
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,),
            child: Row(children: [
              logowidget('images/Page3.png'),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 34.0),
                child: Container(
                  height: 94,
                  width: 94,
                  decoration: BoxDecoration(
                    color: Color(0xff5771F9),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text('NEXT',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          fontFamily: 'inter',
                          color: Color(0xffFFFFFF)),
                    ),
                  ),),
              )
            ],
            ),
          ),
        ],
      ),
    );
  }
}
