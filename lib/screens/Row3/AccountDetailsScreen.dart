import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/TopIcon2.dart';
import 'package:freeda_app/widgets/customButton.dart';

import '../../models/Recent_transfers.dart';
import '../../widgets/AccountDetailWidget.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transfersList = <RecentTransfers>[
      RecentTransfers(
          imageUrl: 'assets/images/image15.png',
          name: 'Bonnie Riley',
          account: 'EUR ACCOUNT',
          amount: '\$651'),
      RecentTransfers(
          imageUrl: 'assets/images/image16.png',
          name: 'Aileen Shin',
          account: 'USD ACCOUNT ',
          amount: '\$850'),
      RecentTransfers(
          imageUrl: 'assets/images/image17.png',
          name: 'Angelina Winn',
          account: 'BDT ACCOUNT',
          amount: '\$651'),
      RecentTransfers(
          imageUrl: 'assets/images/image18.png',
          name: 'Mark Spencer',
          account: 'USD ACCOUNT',
          amount: '\$741'),
    ];
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomButton(
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TopIcon2(),
                      MyText(
                        title: 'Account Details',
                        size: 42,
                        color: Color(0xff151940),
                        weight: FontWeight.bold,
                      ),
                      CustomButton(
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomButton(
                                    Center(
                                      child: MyText(
                                        title: 'Transfered',
                                        size: 18,
                                        color: Color(0xff151940),
                                        weight: FontWeight.w500,
                                      ),
                                    ),
                                    53,
                                    150,
                                    Color(0xffF5F6FA),
                                    8,
                                    Colors.transparent,
                                    0,
                                    0),
                                CustomButton(
                                    Center(
                                      child: MyText(
                                        title: 'Received',
                                        size: 18,
                                        color: Color(0xff151940),
                                        weight: FontWeight.w500,
                                      ),
                                    ),
                                    53,
                                    150,
                                    Colors.transparent,
                                    8,
                                    Colors.transparent,
                                    0,
                                    0),
                              ],
                            ),
                          ),
                          73,
                          332,
                          Colors.white,
                          8,
                          Color(0xff8A959E).withOpacity(0.25),
                          0,
                          10),
                      MyText(
                        title: 'Share Details',
                        size: 12,
                        color: Color(0xff314BCE),
                        weight: FontWeight.w600,
                      )
                    ],
                  ),
                ),
                313,
                376,
                Color(0xffF5F6FA),
                25,
                Colors.transparent,
                0,
                0),
            AccountDetailWidget(
                title: 'Domhnall Gleeson',
                bic: 'DSFHIDFCANACS',
                iban: '123 56366 4456',
                address: '123 Street/NYC'),
            Align(
              alignment: Alignment.centerLeft,
              child: MyText(
                title: 'Recent transfers',
                size: 26,
                color: Colors.black,
                weight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: transfersList.length,
                  itemBuilder: (context, i) {
                    var recent = transfersList[i];
                    return RecentTransfersWidget(
                        imageUrl: recent.imageUrl,
                        name: recent.name,
                        account: recent.account,
                        amount: recent.amount);
                  }),
            )
          ],
        ),
      ),
    ));
  }
}

Widget RecentTransfersWidget({
  required String imageUrl,
  required String name,
  required String account,
  required String amount,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imageUrl),
        Column(
          children: [
            MyText(
              title: name,
              size: 18,
              color: Color(0xff151940),
              weight: FontWeight.w600,
            ),
            MyText(
              title: account,
              size: 12,
              color: Color(0xff7F8192),
              weight: FontWeight.w600,
            ),
          ],
        ),
        SizedBox(
          width: 127,
        ),
        MyText(
          title: amount,
          size: 14,
          color: Color(0xff151940),
          weight: FontWeight.w700,
        )
      ],
    ),
  );
}
