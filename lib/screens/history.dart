import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/AppDrawer.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/TopIcon2.dart';
import 'package:freeda_app/widgets/customButton.dart';

import '../models/PersonalBalance.dart';
import '../widgets/lineChart.dart';
import '../widgets/userBalance.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: const App_Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => App_Drawer()));
                },
                child: TopIcon2()),
            SizedBox(
              height: 27,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                    Row(
                      children: [
                        Image.asset('assets/images/Arrow 1.png', width: 44),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                              title: 'Expense',
                              size: 14,
                              color: Colors.white,
                              weight: FontWeight.w500,
                            ),
                            MyText(
                              title: '\$2,500',
                              size: 24,
                              color: Colors.white,
                              weight: FontWeight.w600,
                            )
                          ],
                        )
                      ],
                    ),
                    88,
                    162,
                    Color(0xff7A7AFD),
                    8,
                    Color(0xff7A7AFD),
                    0,
                    1),
                CustomButton(
                    Row(
                      children: [
                        Image.asset('assets/images/Arrow 1.png', width: 44),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                              title: 'Income',
                              size: 14,
                              color: Colors.white,
                              weight: FontWeight.w500,
                            ),
                            MyText(
                              title: '\$42,500',
                              size: 24,
                              color: Colors.white,
                              weight: FontWeight.w600,
                            )
                          ],
                        )
                      ],
                    ),
                    88,
                    162,
                    Color(0xff5771F9),
                    8,
                    Color(0xff5771F9),
                    0,
                    1),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: personalBalance.length,
                  itemBuilder: (ctx, i) {
                    var bal = personalBalance[i];
                    return userBalance(
                        imageUrl: bal.imageUrl,
                        amount: bal.amount,
                        currency: bal.currency);
                  }),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyText(
                  title: 'Monthly',
                  size: 12,
                  color: Colors.black,
                  weight: FontWeight.w500,
                ),
                MyText(
                  title: 'week',
                  size: 12,
                  color: Colors.black,
                  weight: FontWeight.w500,
                ),
                MyText(
                  title: 'Day',
                  size: 12,
                  color: Colors.black,
                  weight: FontWeight.w500,
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              height: 250,
              width: double.infinity,
              child: LineChartWidget(),
            )
          ],
        ),
      ),
    ));
  }
}
