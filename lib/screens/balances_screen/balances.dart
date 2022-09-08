import'package:flutter/material.dart';

import '../../reusable_widget/reusable_widgets.dart';
// import 'package:freeda_app/reusable_widget/reusable_widgets.dart';

class Balances extends StatelessWidget {
  const Balances({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:Padding(
            padding: const EdgeInsets.only(top: 17, left: 20,right: 18.0),
            child: Container(height: 431,
              padding: const EdgeInsets.only(top: 41, left: 22,right: 22.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffF5F6FA),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  topRow(),
                  SizedBox(height: 32,),
                  Text(
                    'Balances',
                    style: customTextDecor.copyWith(fontSize: 46),
                  ),
                  const SizedBox(height: 42,),
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context,index)=>Container(
                        decoration: customDecoration2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration:const BoxDecoration(
                                  shape: BoxShape.circle
                              ),
                              child: Image.asset(''),),
                            const SizedBox(height: 16,),
                            const Text('title'),
                            const Text('desc'),
                          ],
                        ),
                      )
                  ),
                  Text('See Balance Details',style: customTextDecor.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),),
                  SizedBox(height: 22),

                ],
              ),
            ),
          ),
      ),
    );
  }
}
class Currency{
   final String image;
   final String title;
   final String desc;
   Currency({
     required this.image,
     required this.title,
     required this.desc,
   });

}
List<Currency> money = [
  Currency(
    image: '',
    title: '',
    desc: '',
  )
];