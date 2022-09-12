import'package:flutter/material.dart';
import 'balances_components/balances_components.dart';
import '../../reusable_widget/reusable_widgets.dart';
import '../../reusable_widget/constants.dart';


class Balances extends StatelessWidget {
  const Balances({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:Padding(
            padding: const EdgeInsets.only(top: 17, left: 20,right: 18.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 431,
                  padding: const EdgeInsets.only(top: 41, left: 22,right: 22.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xffF5F6FA),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      topRow(),
                      const SizedBox(height: 32,),
                      Text(
                        'Balances',
                        style: customTextDecor.copyWith(fontSize: 46),
                      ),
                      const SizedBox(height: 42,),
                      SizedBox(height: 138,width: double.infinity,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                            itemCount: money.length,
                            itemBuilder: (context,index)=>Container(
                              padding: const EdgeInsets.only(left: 20,top: 17),
                              width: 129,
                              decoration: customDecoration2.copyWith(
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0,30),
                                      color: const Color(0xff6F889D).withOpacity(.25),
                                    blurRadius: 65, spreadRadius: 0,
                                  )
                                ]
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(width: 36,height: 36,
                                    decoration:BoxDecoration(
                                      color: Colors.white,
                                        shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xff8A959E).withOpacity(.25),
                                          offset: const Offset(0,10), blurRadius: 40,
                                          spreadRadius: 0,
                                        )
                                      ]
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric
                                        (horizontal: 25.01/2,vertical: 20.6/2),
                                      child: Image.asset('${money[index].image}'),
                                    ),),
                                  const SizedBox(height: 16,),
                                   Text('${money[index].title}',style:
                                   customTextDecor.copyWith(fontWeight:
                                   FontWeight.w600,fontSize: 19,),),
                                   Text('${money[index].desc}',style:
                                   customTextDecor.copyWith(fontWeight:
                                   FontWeight.w600,fontSize: 12,color: const Color(0xff898A8D)
                                     ,)),
                                ],
                              ),
                            ), separatorBuilder: (BuildContext context, int
                            index) =>const SizedBox(width: 13,),
                        ),
                      ),
                      const SizedBox(height: 36,),
                      Center(
                        child: Text('See Balance Details',style: customTextDecor.copyWith(
                            color: kPrimaryColor,
                            fontSize: 18, fontWeight: FontWeight.w600),),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                const SizedBox(height: 22,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(width: 147,height: 34,
                      padding: const EdgeInsets.only(left:10),
                      decoration: customDecoration2.copyWith(
                        color: klightPrimaryColor,
                      ),
                      child: Row(
                        children: const [
                          CircleAvatar(radius: 5,backgroundColor: Colors
                              .white,),
                          SizedBox(width: 8,),
                          Text('Payment | \$398',style: TextStyle(color:
                          Colors.white, fontSize: 12, fontWeight: FontWeight
                              .w500),)
                        ],
                      ),
                    ),
                    SizedBox(width: 14,),
                    food_payment_type(text: 'Food',),
                    SizedBox(width: 24,),
                    food_payment_type(text: 'Services',),
                    SizedBox(width: 14,),
                    food_payment_type(text: 'Rent',),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20,left:30,right:39.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextWidget(text: 'Today',color: Color(0xff020000),size: 26,
                          weight: FontWeight.bold,),
                      SizedBox(height: 13,),
                      SizedBox(height: 300,
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                            separatorBuilder: (context, index)=>SizedBox
                              (height: 35,),
                            itemCount: bank_account.length,
                            itemBuilder: (context, index)=>ListTile(
                              leading: SizedBox(height: 52,width: 54,
                                child: Container(
                                  decoration:
                                customDecoration.copyWith(
                                    image: DecorationImage(
                                        image: AssetImage
                                          (bank_account[index].image))),
                                ),
                              ),
                              title: customTextWidget(text:
                              bank_account[index].Title, weight: FontWeight
                                  .w700,size: 14,),
                              subtitle: customTextWidget(text:
                              bank_account[index].desc,weight: FontWeight
                                  .w400,size: 12,),
                              trailing: customTextWidget(text:
                              bank_account[index].price,size: 14, weight:
                              FontWeight.w700,),
                            ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}


