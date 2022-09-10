import 'package:flutter/material.dart';
import '../widget/reuseablewidget.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [ Padding(
            padding: const EdgeInsets.only(top: 93.0, left: 341),
            child: Text('SKIP',style: TextStyle(color: Color(0xff151940)),),
          ),
            SizedBox(height: 34,),
            logowidget('images/Group 68.png'),
            SizedBox(height:53),
            Center(child: Text('Take hold of\n your finances',
              style: TextStyle(
                  fontSize: 44,
              fontFamily: 'Gilroy-Bold',
              color: Color(0xff151940),
              ),
            ),
            ),
            SizedBox(height: 38,),
            Text('Running your finances is easier with xyz',
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
                logowidget('images/page1.png'),
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
                // Padding(
                //   padding: const EdgeInsets.only(right: 10.0),
                //   child:
                //   Container(
                //     height: 94,
                //     width: 94,
                //     decoration: BoxDecoration(
                //       color: Color(0xff5771F9),
                //       shape: BoxShape.circle,
                //     ),
                //     child: Center(child: Text('NEXT')),
                //   ),
                // )
              ],
              ),
            ),

          ],
        ),
      ),
    );
}
}
