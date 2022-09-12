import 'package:flutter/material.dart';

import '../reusable_widget/reusable_widgets.dart';
import 'chart_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(padding:EdgeInsets.only(top: 58,right: 41,left: 41),
            child: Column(
              children:[
                topRow(),
                Text(
                  'Total Balance',
                  style:customTextDecor
                  ,),
                Text(
                  '\$223,600',
                  style:customTextDecor.copyWith(fontSize: 52,fontWeight:
                  FontWeight.bold),
                 ),
                SizedBox(height: 38,),
                // Image.asset('assets/images/Graph.png'),
                Center(
                  child: SizedBox(width: 332,height: 350,
                      child: BarChartGraph()),
                ),
                SizedBox(height: 38,),
                customContainer(height: 73, width: 332,
                    customizedDecoration: customDecoration2.copyWith(
                      color: Color(0xff5771F9),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 48, top: 19,
                            bottom: 13.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Easy Payment',
                              style:customTextDecor.copyWith(fontSize: 18,
                                  fontWeight:
                              FontWeight.w500,color: Colors.white),
                            ),
                            Text(
                              'Check out new features',
                              style:customTextDecor.copyWith(fontSize: 14,
                                  fontWeight:
                              FontWeight.w500, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      customContainer(
                          height: 42.37, width: 44,
                          customMargin: EdgeInsets.only(right:10 ),
                          customizedDecoration: customDecoration.copyWith(
                            image: DecorationImage(image: AssetImage('assets/images/Invite friend arrow.png'))
                          )
                      )
                    ],
                  ),
                )
              ]
            ),
          )),
    );
  }
}

