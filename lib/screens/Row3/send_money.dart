import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/Topwidget.dart';
import 'package:freeda_app/widgets/customButton.dart';
import 'package:provider/provider.dart';

import '../../Provider/provider.dart';
import '../../models/Sending.dart';
import '../../widgets/AppDrawer.dart';
import '../../widgets/Card.dart';

class SendMoney extends StatelessWidget {
  // int amount = 3000;
  // String price = sendController.text;

  @override
  Widget build(BuildContext context) {
    //my list!!
    var data = Provider.of<ProviderDB>(context, listen: false);
    final userSent = <Sending>[
      Sending(
        imageUrl: 'assets/images/image6.png',
        title: 'Yamilet',
      ),
      Sending(
        imageUrl: 'assets/images/image7.png',
        title: 'Alexa',
      ),
      Sending(
        imageUrl: 'assets/images/image8.png',
        title: 'Winn',
      ),
      Sending(
        imageUrl: 'assets/images/image9.png',
        title: 'Krishha',
      ),
      Sending(
        imageUrl: 'assets/images/image10.png',
        title: 'Yamilet',
      ),
    ];
    return SafeArea(
      child: Scaffold(
        drawer: App_Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Top(),
                SizedBox(
                  height: 19,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                          Center(
                            child: MyText(
                              title: 'Local',
                              color: Color(0xff151940),
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                          ),
                          44,
                          162,
                          Color(0xffF1F2F7),
                          8,
                          Color(0xffF1F2F7),
                          0,
                          0),
                      CustomButton(
                        Center(
                          child: MyText(
                            title: 'International',
                            color: Color(0xffFFFFFF),
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                        ),
                        44,
                        162,
                        Color(0xff5771F9),
                        8,
                        Colors.transparent,
                        0,
                        0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CardItems(),
                SizedBox(
                  height: 17,
                ),
                CustomButton(
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: MyText(
                            title: 'Send to',
                            size: 16,
                            color: Color(0xff151940),
                            weight: FontWeight.w600,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: userSent.length,
                              itemBuilder: (ctx, i) {
                                final send = userSent[i];
                                return sendTo(
                                    imageUrl: send.imageUrl, title: send.title);
                              }),
                        )
                      ],
                    ),
                  ),
                  135,
                  332,
                  Color(0xffF5F6FA),
                  10,
                  Colors.transparent,
                  0,
                  0,
                ),
                SizedBox(
                  height: 20,
                ),
                MyText(
                  title: 'SHOULD BE DELIVERED BY',
                  size: 12,
                  color: Color(0xff7F8192),
                  weight: FontWeight.w600,
                ),
                SizedBox(
                  height: 1,
                ),
                MyText(
                  title: '27 APRIL 2020',
                  size: 22,
                  color: Color(0xff151940),
                  weight: FontWeight.w700,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () async {
                        data.sendmoney();
                      },
                      child: CustomButton(
                        Center(
                          child: MyText(
                            title: 'Transfer',
                            size: 18,
                            color: Colors.white,
                            weight: FontWeight.w700,
                          ),
                        ),
                        56,
                        162,
                        Color(0xff5771F9),
                        8,
                        Color(0xff5771F9),
                        3,
                        0,
                      ),
                    ),
                    CustomButton(
                      Center(
                        child: MyText(
                          title: 'Cancel',
                          size: 18,
                          color: Color(0xff7F8192),
                          weight: FontWeight.w700,
                        ),
                      ),
                      56,
                      162,
                      Color(0xffF5F6FA),
                      8,
                      Colors.transparent,
                      0,
                      0,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// this widget will be used in the listview builder!!
Widget sendTo({
  required String imageUrl,
  required String title,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(imageUrl),
        MyText(
          title: title,
          size: 12,
          color: Colors.black,
          weight: FontWeight.w500,
        )
      ],
    ),
  );
}
