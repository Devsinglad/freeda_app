import 'package:flutter/material.dart';

import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import '../widgets/app_button.dart';
import '../widgets/app_button2.dart';
import '../widgets/my_text.dart';

class PaymentSuccessful extends StatefulWidget {
  const PaymentSuccessful({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessful> createState() => _PaymentSuccessfulState();
}

class _PaymentSuccessfulState extends State<PaymentSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 45),

              // creating two directional buttons
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        AppButton(
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          borderColor: Colors.white,
                          text: "",
                          size: 40,
                          isIcon: true,
                          icon: Icons.arrow_back,
                        ),
                        SizedBox(width: 250),
                        AppButton(
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          borderColor: Colors.white,
                          text: "",
                          size: 40,
                          isIcon: true,
                          icon: Icons.call_made_outlined,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              //importing image

              Center(child: Image.asset("images/hand.png")),

              SizedBox(height: 10),

              //creating text

              Container(
                height: 108,
                width: 212,
                color: Colors.white,
                child: Column(
                  children: [
                    MyText(
                      title: 'Payment',
                      size: 40,
                      color: Colors.black87,
                      weight: FontWeight.bold,
                    ),
                    MyText(
                      title: 'Successful',
                      size: 40,
                      color: Colors.black87,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Container(
                height: 56,
                width: 344,
                color: Colors.white,
                child: Column(
                  children: [
                    MyText(
                      title: 'Your Payment was successful. Make this ',
                      size: 18,
                      color: Colors.black87,
                      weight: FontWeight.w500,
                    ),
                    MyText(
                      title: 'user in your favourite list',
                      size: 18,
                      color: Colors.black87,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              // creating container widget

              Container(
                height: 73,
                width: 332,
                decoration: BoxDecoration(
                  color: Color(0xff5771F9),
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 12),
                    Image.asset('images/Rectangle 34.png'),
                    SizedBox(width: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 19,
                          width: 96,
                          color: Color(0xff5771F9),
                          child: Column(
                            children: [
                              MyText(
                                title: 'Krish Kendall',
                                size: 16,
                                color: Colors.white,
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 19,
                          width: 96,
                          color: Color(0xff5771F9),
                          child: Column(
                            children: [
                              MyText(
                                title: 'Canada',
                                size: 16,
                                color: Colors.white,
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 100),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(3.0, 3.0),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      child: Icon(LineIcons.byName('heart')),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              // creating text

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 28,
                    width: 174,
                    color: Colors.white,
                    child: Column(
                      children: [
                        MyText(
                          title: 'SHOULD ARRIVED BY',
                          size: 12,
                          color: Colors.black87,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 28,
                    width: 159,
                    color: Colors.white,
                    child: Column(
                      children: [
                        MyText(
                          title: '27 APRIL 2020',
                          size: 22,
                          color: Colors.black87,
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // creating app button

              AppButtonBig(
                  textColor: Colors.white,
                  backgroundColor: Color(0xff5771F9),
                  borderColor: Colors.white,
                  text: 'Track',
                  height: 56,
                  width: 186,
                  value: 8,
                  size: 18),
            ],
          ),
        ),
      ),
    );
  }
}
