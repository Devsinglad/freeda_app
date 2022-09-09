import 'package:flutter/material.dart';

import '../../../reusable_widget/constants.dart';
import '../../../reusable_widget/reusable_widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';


class buildCardForm extends StatelessWidget {
  final bool isToggled;
  void Function(bool) isClicked;
  buildCardForm({
    Key? key, required this.isToggled, required this.isClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(width: 324,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextWidget(text: 'Card Number',
              color: kTextColor,weight: FontWeight.w600,size: 12,),
            SizedBox(height: 6,),
            SizedBox(width: 324,height: 56,
              child: TextFormField(
                style: TextStyle(color: t2Color,fontWeight:
                FontWeight.w500,fontSize: 14),
                decoration: customTextFormFieldDecor.copyWith(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset('assets/images/mastercard_transferred'
                        '.png',scale: 2,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 33,),
            customTextWidget(text: 'Card Holder',
              color: kTextColor,weight: FontWeight.w600,size: 12,),
            SizedBox(height: 6,),
            SizedBox(width: 324,height: 56,
              child: TextFormField(
                style: TextStyle(color: t2Color,fontWeight:
                FontWeight.w500,fontSize: 14),
                decoration: customTextFormFieldDecor.copyWith(
                  hintText: 'Enter card holder name',
                  hintStyle: TextStyle(color: Color(0xff898A8D),fontWeight:
                  FontWeight.w500,fontSize: 14),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.blue,
                        style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 33,),
            SizedBox(width: 324,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 103,
                        // height: 56,
                        child: Column(
                          children: [
                            customTextWidget(text: 'Expiration Date',
                              color: kTextColor,weight: FontWeight.w600,size: 12,),
                            SizedBox(height: 6,),
                            buildCustomDropDown(IconButton(
                                splashRadius: 1,
                                splashColor: Colors.transparent,
                                onPressed: () {  },
                                icon: Icon(Icons.keyboard_arrow_down_rounded))),
                          ],
                        ),
                      ),
                      SizedBox(width: 111,
                        child: buildCustomDropDown(IconButton(
                            splashRadius: 1,
                            splashColor: Colors.transparent,
                            onPressed: () {  },
                            icon: Icon(Icons.keyboard_arrow_down_rounded))),
                      ),
                      SizedBox(width: 96,
                        child: Column(
                          children: [
                            customTextWidget(text: 'CVC',
                              color: kTextColor,weight: FontWeight.w600,size: 12,),
                            SizedBox(height: 6,),
                            buildCustomDropDown(IconButton(
                                splashRadius: 1,
                                splashColor: Colors.transparent,
                                onPressed: () {  },
                                icon: Image.asset('assets/images/question_mark_add_new_card.png',scale: 1,))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 18,),
            Row(
              children: [
                SizedBox(width: 46,height: 26,
                  child: FlutterSwitch(
                    activeColor: Color(0xff33C759),
                      value: isToggled, onToggle: isClicked
                  ),
                ),
                SizedBox(width: 5,),
                Text('Mark as default card', style:TextStyle
                  (color: Color(0xff898A8D),fontWeight:
                FontWeight.w500,fontSize: 14))
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextField buildCustomDropDown(Widget icon) {
    return TextField(
                        // textAlign: TextAlign.center,
                        style: TextStyle(color: t2Color,fontWeight:
                        FontWeight.w500,fontSize: 14),
                        decoration: customTextFormFieldDecor.copyWith(
                          hintText: '0',suffixIcon: icon,
                          hintStyle: TextStyle(color: Color(0xff898A8D),fontWeight:
                          FontWeight.w500,fontSize: 14),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.blue,
                                style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      );
  }
}
InputDecoration customTextFormFieldDecor =  InputDecoration(
  contentPadding: EdgeInsets.symmetric(horizontal:14),
  filled: true,
    fillColor: Color(0xffF0F2F8),
  hintText: '*** **** *** ***** 6580',
  hintStyle: TextStyle(color: t2Color,fontWeight:
  FontWeight.w500,fontSize: 14),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(width: 1, color:t2Color),
    borderRadius: BorderRadius.circular(8),
  ),
);