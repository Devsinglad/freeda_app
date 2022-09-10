import 'package:flutter/material.dart';
import 'package:freeda_app/reusable_widget/reusable_widgets.dart';
import 'package:freeda_app/reusable_widget/constants.dart';
import '../../screens/transferred_screen/transferred_screen_components/transferred_screen_components.dart';

class Transferred extends StatelessWidget {
  const Transferred({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 17,left: 20,right: 18.0),
          child: Column(
            children: [
              Center(
                child: customContainer(height: 458,width: 376,
                  padding: const EdgeInsets.fromLTRB(22, 41, 22, 0),
                  customizedDecoration: customDecoration2.copyWith(color:
                      const Color(0xffF5F6FA),borderRadius: BorderRadius.circular(25)
                  ),
                  child: Stack(
                    children: [
                      Column(crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Align(alignment: Alignment.topCenter,
                            child: topRow(),
                      ),
                          const SizedBox(height: 32,),
                          const customTextWidget(text: 'Transferred',color: ColorStyle
                              .kTextColor,size: 46, weight: FontWeight.bold,),
                          const SizedBox(height: 229,),
                          const Align(alignment: Alignment.bottomCenter,
                            child: customTextWidget(text: 'See Transfer Details',
                          color: kPrimaryColor,size: 18,weight: FontWeight
                              .w600,),
                      ),
                    ],
                ),
                      Positioned(bottom: 101,
                        child: SizedBox(height: 138,width: 376,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: transferred_money.length,
                            separatorBuilder: (context, index)=>const SizedBox(width:13,),
                            itemBuilder: (context,index)=>customContainer(
                              height: 138, width: 129,
                              customizedDecoration:customDecoration2.copyWith(
                                  color: Colors.white
                              ),
                              child: Column(crossAxisAlignment:
                              CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 15,),
                                  SizedBox(width: 54,height: 54,
                                      child: Image.asset(transferred_money[index].image)),
                                  const SizedBox(height: 11,),
                                  customTextWidget(text:
                                  transferred_money[index].Title,weight:
                                  FontWeight.w600,size: 16,),
                                  const SizedBox(height: 4,),
                                  customTextWidget(text:
                                  transferred_money[index].desc,weight:
                                  FontWeight.w600,size: 10,)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ]),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: SizedBox(width: 329,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      SizedBox(height: 18,),
                      const customTextWidget(text: 'Card Use', color: const Color(0xff020000),
                        size:26,
                        weight: FontWeight.bold ,),
                      const customTextWidget(text: '02 Physical card, 03 Debit Cards',
                        color: Color(0xff7F8192),),
                      SizedBox(height: 25,),
                      const buildPaymentCard(),
                      SizedBox(height: 24,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const customTextWidget(text: 'Mastercard', color: kTextColor,
                                size:26,
                                weight: FontWeight.bold ,),
                              const customTextWidget(text: 'Domhnall Gleeson',
                                color: Color(0xffC4C4C4),
                                size:14,
                                weight: FontWeight.w600 ,),
                            ],
                          ),
                          const customTextWidget(text: 'See Details', color: kPrimaryColor,
                            size:14,
                            weight: FontWeight.w700 ,),
                        ],
                      ),
                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}


