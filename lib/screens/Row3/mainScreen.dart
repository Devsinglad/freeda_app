import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/screens/Row3/TransactionDetailsScreen.dart';
import 'package:freeda_app/screens/Row3/send_money.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/customButton.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Provider/provider.dart';
import '../../models/transactlist.dart';
import '../../widgets/AppDrawer.dart';
import '../../widgets/Topwidget.dart';
import '../../widgets/servicesWidget.dart';
import '../../widgets/transactionTile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero).then((value) {
      var data = Provider.of<ProviderDB>(context, listen: false);
      data.firebaseUserInfo();
      data.firebasePhoneNumber();
    });
  }

// when using sharedPreference!!
  // Future<void> localStorage() async {
  //   final localsdk = await SharedPreferences.getInstance();
  //   fullname = await localsdk.getString('fullname');
  //   email = await localsdk.getString('email');
  //   password = await localsdk.getString('password');
  //   print(fullname);
  //   print(email);
  //   print(password);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const App_Drawer(),
        body: Consumer<ProviderDB>(builder: (context, data, _) {
          return Padding(
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
                                title: data.fullname.toString(),
                                size: 26,
                                weight: FontWeight.bold,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MyText(
                                    color: Colors.black,
                                    title: 'account phone number ends ',
                                    size: 16,
                                    weight: FontWeight.w500,
                                  ),
                                  MyText(
                                    color: Colors.black,
                                    title: data.phoneNumber
                                        .toString()
                                        .substring(data.phoneNumber!.length -
                                            4), //uc.substring(uc.length - 4).toString(),
                                    size: 16,
                                    weight: FontWeight.w500,
                                  ),
                                ],
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
                      title:
                          'Transfer', //uc.substring(uc.length - 4).toString(),
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
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SendMoney()));
                      },
                      child: CustomButton(
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
                                    // title: data.initAmount.toString(),
                                    title: ' ${data.initAmount.toString()}',
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
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => TransactionDetailsScreen()));
                      },
                      child: CustomButton(
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
                    ),
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
          );
        }),
      ),
    );
  }
}
