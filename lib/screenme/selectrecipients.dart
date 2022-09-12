import 'package:flutter/material.dart';
import '../widgetssss/app_button.dart';
import '../widgetssss/app_button2.dart';
import '../widgetssss/my_text.dart';

class SelectRecipients extends StatefulWidget {
  const SelectRecipients({Key? key}) : super(key: key);

  @override
  State<SelectRecipients> createState() => _SelectRecipientsState();
}

class _SelectRecipientsState extends State<SelectRecipients> {
  final _contactcontroller = TextEditingController();

  void dispose() {
    _contactcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),

              // creating directional arrows

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
                          icon: Icons.more_horiz,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15),

              //creating text

              Row(
                children: [
                  SizedBox(width: 30),
                  MyText(
                      title: 'Select Recipients',
                      size: 42,
                      color: Color(0xff151940),
                      weight: FontWeight.bold),
                ],
              ),

              SizedBox(height: 27),

              // creating customized container

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
                        title: 'Add new recepient',
                        size: 18,
                        color: Colors.white),
                    SizedBox(width: 100),
                    AppButton(
                      textColor: Color(0xff5771F9),
                      backgroundColor: Colors.white,
                      borderColor: Colors.white,
                      text: "",
                      size: 40,
                      isIcon: true,
                      icon: Icons.add,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              // creating text
              Row(
                children: [
                  SizedBox(width: 35),
                  MyText(
                    title: 'MY ACCOUNTS',
                    size: 14,
                    color: Color(0xff151940),
                    weight: FontWeight.w600,
                  ),
                ],
              ),

              SizedBox(height: 20),

              // creating columns

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      height: 73,
                      width: 332,
                      color: Color(0xffE5E5E5),
                      child: Row(
                        children: [
                          Image.asset('images/ab1.png'),
                          SizedBox(width: 14),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                title: 'AB Bank',
                                size: 18,
                                color: Color(0xff020000),
                                weight: FontWeight.w600,
                              ),
                              MyText(
                                title: 'Account ending with 1252',
                                size: 12,
                                color: Color(0xff7F8192),
                                weight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(width: 65),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      height: 73,
                      width: 332,
                      color: Color(0xffE5E5E5),
                      child: Row(
                        children: [
                          Image.asset('images/ab2.png'),
                          SizedBox(width: 14),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                title: 'AB Bank',
                                size: 18,
                                color: Color(0xff020000),
                                weight: FontWeight.w600,
                              ),
                              MyText(
                                title: 'Account ending with 1252',
                                size: 12,
                                color: Color(0xff7F8192),
                                weight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(width: 65),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      height: 73,
                      width: 332,
                      color: Color(0xffE5E5E5),
                      child: Row(
                        children: [
                          Image.asset('images/ab3.png'),
                          SizedBox(width: 14),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                title: 'AB Bank',
                                size: 18,
                                color: Color(0xff020000),
                                weight: FontWeight.w600,
                              ),
                              MyText(
                                title: 'Account ending with 1252',
                                size: 12,
                                color: Color(0xff7F8192),
                                weight: FontWeight.w600,
                              ),
                            ],
                          ),
                          SizedBox(width: 65),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              // creating text

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    MyText(
                      title: 'ADD NEW CONTACTS',
                      size: 14,
                      color: Color(0xff151940),
                      weight: FontWeight.w600,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // creating search and invite button

              Container(
                width: 332,
                height: 264,
                decoration: BoxDecoration(
                  color: Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: 46,
                        width: 303,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: TextFormField(
                            controller: _contactcontroller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'search for contact...',
                              suffixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xff5771F9),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Container(
                              height: 60,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset("images/pix2.png"),
                                  SizedBox(width: 11),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        title: '+000 00 0000',
                                        size: 10,
                                        color: Color(0xff7F8192),
                                        weight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 36),
                                  AppButtonBig(
                                      textColor: Colors.white,
                                      backgroundColor: Color(0xff5771F9),
                                      borderColor: Color(0xffF5F6FA),
                                      text: 'Invited',
                                      height: 33.3,
                                      width: 60,
                                      value: 8),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Container(
                              height: 60,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Color(0xffF5F6FA),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.0,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset("images/pix1.png"),
                                  SizedBox(width: 11),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MyText(
                                        title: 'Alejandra Star',
                                        size: 14,
                                        color: Color(0xff020000),
                                        weight: FontWeight.w600,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      MyText(
                                        title: '+000 00 0000',
                                        size: 10,
                                        color: Color(0xff7F8192),
                                        weight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 42),
                                  AppButtonBig(
                                      textColor: Colors.white,
                                      backgroundColor: Color(0xff5771F9),
                                      borderColor: Color(0xffF5F6FA),
                                      text: 'Invited',
                                      height: 33.3,
                                      width: 60,
                                      value: 8),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
