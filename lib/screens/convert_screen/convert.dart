import 'package:flutter/material.dart';

import '../../reusable_widget/reusable_widgets.dart';
import 'convert_components/convert_screen_components.dart';

class Convert extends StatelessWidget {
  const Convert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 58,left: 41,right: 41.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topRow(),
                SizedBox(height: 7,),
                Text(
                    'Convert',
                  style: customTextDecor.copyWith(fontSize: 48,fontWeight:
                  FontWeight.bold),
                ),
                SizedBox(height: 15,),
                Text.rich(TextSpan(
                    style: customTextDecor.copyWith(fontWeight: FontWeight
                        .w400,fontFamily: 'Inter', fontSize: 17),
                    children:[
                  TextSpan(text: 'You have ',),
                  TextSpan(text: '4930 EUR ',style: customTextDecor.copyWith(fontWeight: FontWeight
                      .w700,fontFamily: 'Inter', fontSize: 17)),
                  TextSpan(text: 'in your balance '),
                ]
                ),

                ),
                  SizedBox(height: 33,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      convert_plate(image: 'assets/images/USA_convert.png',
                        title: 'USD',),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17.0),
                        child: Image.asset('assets/images/covert_MaskGroup.png',scale:
                        1.5,),
                      ),
                      convert_plate(image: 'assets/images/Euro_convert.png', title: 'EUR')
                    ],
                  ),
                SizedBox(height: 26,),
                Center(
                  child: customContainer(height: 95, width: 322, customizedDecoration:
                  customDecoration2.copyWith(borderRadius: BorderRadius
                      .circular(8),color: Color(0xff5771F9),
                  boxShadow: [
                    BoxShadow(color: Color(0xffA3ABB2).withOpacity(.20),
                        blurRadius: 60)
                  ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30,17,42,16.0),
                      child: Column(
                        children: const [
                          Text('1 USD = 0,80 EUR', style: TextStyle(fontSize:
                          30, fontWeight: FontWeight.w400,fontFamily: 'Noto '
                              'Serif', color:
                          Colors.white),),
                          Text('- 0.22 past month', style: TextStyle(fontSize:
                          15, fontWeight: FontWeight.w700,fontFamily: 'Inter',
                              color:
                          Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 55,),
                Center(
                  child: SizedBox(width: 322,
                  child: Column(
                    children: [
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Fee', style: customTextDecor.copyWith
                            (fontSize: 15, fontWeight: FontWeight.w500),),
                          Text('1.14 EUR',style: customTextDecor.copyWith
                            (fontSize: 15, fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Amount converted', style: customTextDecor
                              .copyWith
                            (fontSize: 15, fontWeight: FontWeight.w500),),
                          Text('276.86 EUR',style: customTextDecor.copyWith
                            (fontSize: 15, fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Rate', style: customTextDecor.copyWith
                            (fontSize: 15, fontWeight: FontWeight.w500),),
                          Text('0.22 EUR',style: customTextDecor.copyWith
                            (fontSize: 15, fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 138,),
                      // customContainer(height: 63, width: 341,
                      //     customizedDecoration: customDecoration2.copyWith
                      //       (color: Color(0xff5771F9), boxShadow: [
                      //         BoxShadow(offset: Offset(0,4,),blurRadius: 8,
                      //     spreadRadius: 0, color: Color(0xff9A8989).withOpacity(.20)
                      //         )]),
                      // child: Row(
                      //   children: [
                      //     Text('Continue',style: customTextDecor.copyWith(
                      //         color: Colors.white, fontSize:18 ),)
                      //   ],
                      // ),)
                      customContainer1,
                    ],
                  ),),
                ),

              ],
            ),
          )
      ),
    );
  }
}


