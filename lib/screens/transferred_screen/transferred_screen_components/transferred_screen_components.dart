import 'package:flutter/material.dart';

import '../../../reusable_widget/constants.dart';
import '../../../reusable_widget/reusable_widgets.dart';

class transferred_account{
  final String image;
  final String Title;
  final String desc;
  transferred_account({
    required this.Title,
    required this.desc,
    required this.image}
      );
}
List<transferred_account> transferred_money = [
  transferred_account(
      Title: 'Bonnie Riley',
      image: 'assets/images/image1_transferred_screen.png',
      desc: 'EUR ACCOUNT'
  ),
  transferred_account(
      Title: 'Becky Parker',
      image: 'assets/images/image2_transferred_screen.png',
      desc: 'EUR ACCOUNT'
  ),
  transferred_account(
      Title: 'Ryan Reynolds',
      image: 'assets/images/image3_transferred_screen.png',
      desc: 'EUR ACCOUNT'
  ),
  transferred_account(
      Title: 'Bonnie Riley',
      image: 'assets/images/image1_transferred_screen.png',
      desc: 'EUR ACCOUNT'
  ),
];

class buildPaymentCard extends StatelessWidget {
  const buildPaymentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 329,height: 188,
      padding: EdgeInsets.fromLTRB(23, 25, 0, 0),
      decoration: BoxDecoration(
        color: ColorStyle.t2Color,borderRadius: BorderRadius.circular(25),
        image: DecorationImage(image: AssetImage
          ('assets/images/transparent_Bg_transferred.png')),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTextWidget(text: 'MASTERCARD',color: Colors.white,size:
          16,weight: FontWeight.w600,),
          SizedBox(height: 30,),
          customTextWidget(text: 'Account Number',weight: FontWeight.w500,
            size: 12, color: Colors.white,),
          customTextWidget(text: '023 456 789 123',color: Colors.white,size:
          16,weight: FontWeight.w600,),
          SizedBox(height: 31,),
          Row(
            children: [
              customTextWidget(text: 'Account Holder',color: Colors.white,),
              SizedBox(width: 70,),
              customTextWidget(text: 'Valid Till',color: Colors.white,size:
              10,weight: FontWeight.w500,),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customTextWidget(text: 'Domhnall Gleeson',color: Colors.white,size:
              14,weight: FontWeight.w600,),
              SizedBox(width: 50,),
              customTextWidget(text: '10.10.2020',color: Colors.white,size:
              10,weight: FontWeight.w600,),
              SizedBox(width: 41,),
              SizedBox(width: 29,height: 29,
                  child: Image.asset
                    ('assets/images/mastercard_transferred.png')),
              // SizedBox(width: 12,),
            ],
          ),
        ],
      ),
    );
  }
}