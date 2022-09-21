import 'package:flutter/material.dart';
import 'package:freeda_app/screen_precious/selectrecipients.dart';
import '../widgets/app_button.dart';
import '../widgets/app_button2.dart';
import '../widgets/my_text.dart';

class Recipients extends StatefulWidget {
  const Recipients({Key? key}) : super(key: key);

  @override
  State<Recipients> createState() => _RecipientsState();
}

class _RecipientsState extends State<Recipients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 75),

            // creating directional arrows

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: AppButton(
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          borderColor: Colors.white,
                          text: "",
                          size: 40,
                          isIcon: true,
                          icon: Icons.arrow_back,
                        ),
                      ),
                      SizedBox(width: 250),
                      AppButton(
                        textColor: Colors.black,
                        backgroundColor: Colors.white,
                        borderColor: Colors.white,
                        text: "",
                        size: 40,
                        isIcon: true,
                        icon: Icons.more_horiz,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            //creating text and search button

            Row(
              children: [
                SizedBox(width: 30),
                MyText(
                    title: 'Recipients',
                    size: 42,
                    color: Color(0xff151940),
                    weight: FontWeight.bold),
                SizedBox(width: 80),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search_rounded,
                    size: 30,
                  ),
                ),
              ],
            ),

            SizedBox(height: 27),

            Container(
              height: 73,
              width: 332,
              decoration: BoxDecoration(
                color: Color(0xff5771F9),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 19),
                  MyText(
                      title: 'My  personal accounts (4)',
                      size: 18,
                      color: Colors.white),
                  SizedBox(width: 38),
                  AppButton(
                    textColor: Color(0xff5771F9),
                    backgroundColor: Colors.white,
                    borderColor: Colors.white,
                    text: "",
                    size: 40,
                    isIcon: true,
                    icon: Icons.arrow_forward,
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // creating customised container

            Row(
              children: [
                SizedBox(width: 35),
                MyText(
                  title: 'RECENT RECEIPTS',
                  size: 14,
                  color: Color(0xff151940),
                  weight: FontWeight.w600,
                ),
              ],
            ),

            Container(
              width: 332,
              height: 450,
              decoration: BoxDecoration(
                color: Color(0xffE5E5E5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                              color: Color(0xffE5E5E5),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xffE5E5E5),
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/images/pix3.png"),
                                SizedBox(width: 11),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      title: 'Bonnie Riley',
                                      size: 14,
                                      color: Color(0xff020000),
                                      weight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    MyText(
                                      title: 'EUR ACCOUNT',
                                      size: 10,
                                      color: Color(0xff7F8192),
                                      weight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 100),
                                AppButtonBig(
                                    textColor: Color(0xff151940),
                                    backgroundColor: Color(0xffE5E5E5),
                                    borderColor: Color(0xffF5F6FA),
                                    text: 'SEND',
                                    height: 33.3,
                                    width: 60,
                                    value: 8),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                              color: Color(0xffE5E5E5),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xffE5E5E5),
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/images/pix4.png"),
                                SizedBox(width: 11),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      title: 'Aileen Shin',
                                      size: 14,
                                      color: Color(0xff020000),
                                      weight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    MyText(
                                      title: 'USD ACCOUNT',
                                      size: 10,
                                      color: Color(0xff7F8192),
                                      weight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 105),
                                AppButtonBig(
                                    textColor: Color(0xff151940),
                                    backgroundColor: Color(0xffE5E5E5),
                                    borderColor: Color(0xffF5F6FA),
                                    text: 'SEND',
                                    height: 33.3,
                                    width: 60,
                                    value: 8),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                              color: Color(0xffE5E5E5),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xffE5E5E5),
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/images/pix5.png"),
                                SizedBox(width: 11),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      title: 'Angelina Winn',
                                      size: 14,
                                      color: Color(0xff020000),
                                      weight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    MyText(
                                      title: 'BDT ACCOUNT',
                                      size: 10,
                                      color: Color(0xff7F8192),
                                      weight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 85),
                                AppButtonBig(
                                    textColor: Color(0xff151940),
                                    backgroundColor: Color(0xffE5E5E5),
                                    borderColor: Color(0xffF5F6FA),
                                    text: 'SEND',
                                    height: 33.3,
                                    width: 60,
                                    value: 8),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                              color: Color(0xffE5E5E5),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xffE5E5E5),
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/images/pix2.png"),
                                SizedBox(width: 11),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      title: 'Yamilet Booker',
                                      size: 14,
                                      color: Color(0xff020000),
                                      weight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    MyText(
                                      title: 'INR ACCOUNT',
                                      size: 10,
                                      color: Color(0xff7F8192),
                                      weight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 80),
                                AppButtonBig(
                                    textColor: Color(0xff151940),
                                    backgroundColor: Color(0xffE5E5E5),
                                    borderColor: Color(0xffF5F6FA),
                                    text: 'SEND',
                                    height: 33.3,
                                    width: 60,
                                    value: 8),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                              color: Color(0xffE5E5E5),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xffE5E5E5),
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/images/pix1.png"),
                                SizedBox(width: 11),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      title: 'Alejandra Stallings',
                                      size: 14,
                                      color: Color(0xff020000),
                                      weight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    MyText(
                                      title: 'GBP ACCOUNT',
                                      size: 10,
                                      color: Color(0xff7F8192),
                                      weight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 55),
                                AppButtonBig(
                                    textColor: Color(0xff151940),
                                    backgroundColor: Color(0xffE5E5E5),
                                    borderColor: Color(0xffF5F6FA),
                                    text: 'SEND',
                                    height: 33.3,
                                    width: 60,
                                    value: 8),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                              color: Color(0xffE5E5E5),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xffE5E5E5),
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/images/pix6.png"),
                                SizedBox(width: 11),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(
                                      title: 'Viljami Toivonen',
                                      size: 14,
                                      color: Color(0xff020000),
                                      weight: FontWeight.w600,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    MyText(
                                      title: 'EUR ACCOUNT',
                                      size: 10,
                                      color: Color(0xff7F8192),
                                      weight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                SizedBox(width: 70),
                                AppButtonBig(
                                    textColor: Color(0xff151940),
                                    backgroundColor: Color(0xffE5E5E5),
                                    borderColor: Color(0xffF5F6FA),
                                    text: 'SEND',
                                    height: 33.3,
                                    width: 60,
                                    value: 8),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SelectRecipients()));

        },
        backgroundColor: Color(0xff5771F9),
        child: MyText(title: 'ADD', size: 14, color: Colors.white),
      ),
    );
  }
}
