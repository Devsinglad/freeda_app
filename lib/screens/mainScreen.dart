import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/customButton.dart';
import '../models/transactlist.dart';
import '../widgets/AppDrawer.dart';
import '../widgets/Topwidget.dart';
import '../widgets/servicesWidget.dart';
import '../widgets/transactionTile.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const App_Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Top(),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  //fit: StackFit.passthrough,

                  children: [
                    CustomButton(
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          children: [
                            MyText(
                              color: Colors.black,
                              title: 'Domhnall Gleeson',
                              size: 26,
                              weight: FontWeight.bold,
                            ),
                            MyText(
                              color: Colors.black,
                              title: 'account ending with 1545',
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      135,
                      332,
                      Color(0xfff5F6FA),
                      10,
                      Colors.transparent,
                      0,
                      0,
                    ),
                    Positioned(
                      left: 130,
                      top: -30,
                      child: CustomButton(
                        Image.asset('assets/images/image.png'),
                        65.48,
                        68,
                        Colors.transparent,
                        10,
                        Colors.transparent,
                        0,
                        0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Services(
                    width: 53,
                    height: 53,
                    icon: Icons.swap_horiz_outlined,
                    title: 'Transfer',
                  ),
                  Services(
                    width: 53,
                    height: 53,
                    icon: Icons.person_outline_sharp,
                    title: 'Sent',
                  ),
                  Services(
                    width: 53,
                    height: 53,
                    icon: Icons.shopping_bag_outlined,
                    title: 'Shopping',
                  ),
                  Services(
                    width: 53,
                    height: 53,
                    icon: Icons.description_outlined,
                    title: 'Bill',
                  ),
                  Services(
                    width: 53,
                    height: 53,
                    icon: Icons.payments_sharp,
                    title: 'Vouchers',
                  ),
                ],
              ),
              SizedBox(
                height: 37,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              MyText(
                                title: 'Salary',
                                size: 14,
                                color: Colors.white,
                                weight: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              MyText(
                                title: '\$255,500',
                                size: 14,
                                color: Colors.white,
                                weight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                      65,
                      162,
                      Color(0xff7A7AFD),
                      8,
                      Color(0xff7A7AFD),
                      0,
                      0),
                  CustomButton(
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              MyText(
                                title: 'Transfers',
                                size: 14,
                                color: Colors.white,
                                weight: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              MyText(
                                title: '\$42,500',
                                size: 14,
                                color: Colors.white,
                                weight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                      65,
                      162,
                      Color(0xff5771F9),
                      8,
                      Color(0xff5771F9),
                      3,
                      6),
                ],
              ),
              SizedBox(
                height: 21,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: MyText(
                  title: 'Recent transactions',
                  size: 20,
                  color: Colors.black,
                  weight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
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
            ],
          ),
        ),
      ),
    );
  }
}
