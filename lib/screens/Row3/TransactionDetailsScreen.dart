import 'package:flutter/material.dart';
import 'package:freeda_app/models/Sending.dart';
import 'package:freeda_app/widgets/AppDrawer.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/Topwidget.dart';
import 'package:freeda_app/widgets/customButton.dart';

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final morepayments = <Sending>[
      Sending(
        imageUrl: 'assets/images/image12.png',
        title: 'British Pound',
      ),
      Sending(
        imageUrl: 'assets/images/image13.png',
        title: 'US Dollar',
      ),
      Sending(
        imageUrl: 'assets/images/image11.png',
        title: 'Euro',
      ),
    ];
    return SafeArea(
        child: Scaffold(
      drawer: const App_Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Top(),
            SizedBox(
              height: 28,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CustomButton(
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          title: '\$395,42.00',
                          size: 34,
                          color: Colors.black,
                          weight: FontWeight.bold,
                        ),
                        MyText(
                          title: 'US Dollars',
                          size: 16,
                          color: Colors.black,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                    176,
                    332,
                    Color(0xffF5F6FA),
                    10,
                    Colors.transparent,
                    0,
                    0),
                Positioned(
                  left: 130,
                  top: -25,
                  child: Image.asset('assets/images/image14.png'),
                ),
                Positioned(
                  bottom: -50,
                  left: 70,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.call_made_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                              MyText(
                                title: 'Send',
                                size: 16,
                                color: Colors.white,
                                weight: FontWeight.w600,
                              )
                            ],
                          ),
                          87,
                          89,
                          Color(0xff7A7AFD),
                          10,
                          Color(0xff7A7AFD),
                          0,
                          1),
                      SizedBox(
                        width: 23,
                      ),
                      CustomButton(
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 40,
                              ),
                              MyText(
                                title: 'Convert',
                                size: 16,
                                color: Colors.white,
                                weight: FontWeight.w600,
                              )
                            ],
                          ),
                          87,
                          89,
                          Color(0xff5771F9),
                          10,
                          Color(0xff5771F9),
                          0,
                          1),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            CustomButton(
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyText(
                        title: 'USD Transaction History',
                        size: 18,
                        color: Colors.black,
                        weight: FontWeight.w600,
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
                Color(0xff8A959E).withOpacity(0.25),
                0,
                10),
            SizedBox(
              height: 28,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: MyText(
                title: 'More Payment Methods',
                size: 26,
                color: Colors.black,
                weight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: morepayments.length,
                  itemBuilder: (ctx, i) {
                    return TransactionDetailsWidget(
                      imageUrl: morepayments[i].imageUrl,
                      currency: morepayments[i].title,
                    );
                  }),
            )
          ],
        ),
      ),
    ));
  }
}

Widget TransactionDetailsWidget({
  required String imageUrl,
  required String currency,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
    child: CustomButton(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              Image.asset(
                imageUrl,
                fit: BoxFit.scaleDown,
              ),
              52,
              54,
              Colors.white,
              10,
              Colors.black.withOpacity(0.15),
              //Color(0xff314BCE26).withOpacity(0.15),
              0,
              15,
            ),
            SizedBox(width: 10),
            MyText(
              title: currency,
              size: 18,
              color: Colors.black,
              weight: FontWeight.w600,
            ),
            SizedBox(
              width: 88,
            ),
            CustomButton(
                Icon(
                  Icons.arrow_forward,
                  color: Color(0xff5771F9),
                ),
                42.37,
                44,
                Colors.white,
                10,
                Colors.transparent,
                0,
                0)
          ],
        ),
        84,
        337,
        Color(0xffF5F6FA),
        10,
        Colors.transparent,
        0,
        0),
  );
}
