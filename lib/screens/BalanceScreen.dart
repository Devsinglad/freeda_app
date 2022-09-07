import 'package:flutter/material.dart';
import 'package:freeda_app/models/transactlist.dart';
import 'package:freeda_app/widgets/MyText.dart';

import 'package:freeda_app/widgets/customButton.dart';
import 'package:freeda_app/widgets/transactionTile.dart';

import '../models/Balances.dart';
import '../widgets/TopIcon2.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final personalBalance = <Balances>[
      Balances(
        imageUrl: 'assets/images/image11.png',
        amount: '18,42',
        currency: 'Euro Bal',
      ),
      Balances(
        imageUrl: 'assets/images/image12.png',
        amount: '121k',
        currency: 'British Bal',
      ),
      Balances(
        imageUrl: 'assets/images/image13.png',
        amount: '352k',
        currency: 'US Bal',
      ),
    ];
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                CustomButton(
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(
                      children: [
                        TopIcon2(),
                        SizedBox(
                          height: 35,
                        ),
                        MyText(
                          title: 'USD BALANCE AVAILABLE',
                          size: 16,
                          color: Color(0xff151940),
                          weight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        MyText(
                          title: '\$2,52,00.00',
                          size: 46,
                          color: Color(0xff151940),
                          weight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        MyText(
                          title: 'See Bank Details',
                          size: 18,
                          color: Color(0xff314BCE),
                          weight: FontWeight.w600,
                        )
                      ],
                    ),
                  ),
                  304,
                  376,
                  Color(0xffF5F6FA),
                  25,
                  Colors.transparent,
                  0,
                  0,
                ),
                SizedBox(
                  height: 22,
                ),
                CustomButton(
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            title: 'Transaction Details',
                            size: 18,
                            color: Color(0xff151940),
                            weight: FontWeight.w500,
                          ),
                          CustomButton(
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                              42.37,
                              44,
                              Color(0xff5771F9),
                              10,
                              Colors.transparent,
                              0,
                              0)
                        ],
                      ),
                    ),
                    73,
                    332,
                    Colors.white,
                    8,
                    Colors.grey.withOpacity(0.25),
                    0,
                    10),
                SizedBox(
                  height: 14,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: MyText(
                    title: 'Balances',
                    size: 46,
                    color: Colors.black,
                    weight: FontWeight.bold,
                  ),
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: MyText(
                    title: 'Recent transactions',
                    size: 26,
                    color: Colors.black,
                    weight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: transactList.length,
                      itemBuilder: (context, i) {
                        final trx = transactList[i];
                        return transactionTile(
                            imageUrl: trx.imageUrl,
                            title: trx.title,
                            subTitle: trx.subTitle,
                            amount: trx.amount);
                      }),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget userBalance({
  required String imageUrl,
  required String amount,
  required String currency,
}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: CustomButton(
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imageUrl),
          MyText(
            title: amount,
            size: 28,
            color: Colors.black,
            weight: FontWeight.w600,
          ),
          MyText(
            title: currency,
            size: 14,
            color: Color(0xff7F8192),
            weight: FontWeight.w600,
          )
        ],
      ),
      157,
      138,
      Colors.white,
      10,
      Color(0xff8A959E).withOpacity(0.1),
      0,
      15,
    ),
  );
}
