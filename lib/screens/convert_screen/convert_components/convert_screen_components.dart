import 'package:flutter/material.dart';

import '../../../reusable_widget/reusable_widgets.dart';

class convert_plate extends StatelessWidget {
  final String image;
  final String title;
  const convert_plate({
    Key? key, required this.image, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 134, width: 127,
      padding: const EdgeInsets.only(top:22, left: 35,
          right: 35),
      decoration: customDecoration2.copyWith(
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          Container(width: 57,height: 57,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x408A959E),
                  blurRadius: 30,spreadRadius: 0,
                  offset: Offset(0, 15),
                )
              ],
              shape: BoxShape.circle,),
            child: Padding(
              padding: EdgeInsets.all(6),
              child: CircleAvatar(backgroundImage:
              AssetImage(image),
              ),
            ),
          ),
          SizedBox(height: 9,),
          Text(title,style: customTextDecor.copyWith
            (fontSize: 18,fontFamily: 'Inter',fontWeight:
          FontWeight.w500),),
        ],
      ),
    );
  }
}

Widget customContainer1 = customContainer(height: 73, width: 332,
  customizedDecoration: customDecoration2.copyWith(
    color: Color(0xff5771F9),
  ),
  child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
  Padding(
  padding: const EdgeInsets.only(left: 130, top: 19,
      bottom: 13.0),
  child: Row(
    // crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: Text(
          'Continue',
          style:customTextDecor.copyWith(fontSize: 18,
              fontWeight:
              FontWeight.w500,color: Colors.white),
        ),
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
)]));