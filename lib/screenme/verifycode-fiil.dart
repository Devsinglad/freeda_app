import 'package:flutter/material.dart';
import '../widgetssss/app_button.dart';
import '../widgetssss/modifyappbutton.dart';
import '../widgetssss/my_text.dart';

class VerifyCodeFill extends StatefulWidget {
  const VerifyCodeFill({Key? key}) : super(key: key);

  @override
  State<VerifyCodeFill> createState() => _VerifyCodeFillState();
}

class _VerifyCodeFillState extends State<VerifyCodeFill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // creating a back arrow
              SizedBox(height: 20),

              // creating Button

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
                  ],
                ),
              ),

              SizedBox(height: 85),

              // Creating Text

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    MyText(
                      title: "Verify Code",
                      size: 40,
                      color: Colors.black87,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // creating text

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    MyText(
                        title: 'Check your SMS inbox, we have sent \n',
                        size: 10,
                        color: Colors.black87,
                        weight: FontWeight.w400),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    MyText(
                        title: 'you the code at ',
                        size: 13,
                        color: Colors.black87,
                        weight: FontWeight.w400),
                    MyText(
                      title: '+0 000 000 0000.',
                      size: 13,
                      color: Colors.black87,
                      weight: FontWeight.bold,
                    )
                  ],
                ),
              ),

              SizedBox(height: 123),

              // creating code form

              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AppButtonSmall(
                        textColor: Colors.white,
                        backgroundColor: Color(0xff314bce),
                        borderColor: Colors.white,
                        text: '8',
                        size: 70),
                    AppButtonSmall(
                        textColor: Colors.white,
                        backgroundColor: Color(0xff5771F9),
                        borderColor: Colors.white,
                        text: '5',
                        size: 70),
                    AppButtonSmall(
                        textColor: Colors.black87,
                        backgroundColor: Color(0xfff5f6fa),
                        borderColor: Colors.white,
                        text: '2',
                        size: 70),
                    AppButtonSmall(
                        textColor: Colors.black,
                        backgroundColor: Color(0xffF5F6FA),
                        borderColor: Colors.white,
                        text: '3',
                        size: 70),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // creating text

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    MyText(
                        title: "(00:52)",
                        size: 13,
                        color: Color(0xff5771F98),
                        weight: FontWeight.w400),
                  ],
                ),
              ),

              SizedBox(height: 48),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    MyText(
                      title: "This session will end in 60 seconds.",
                      size: 14,
                      color: Colors.black87,
                      weight: FontWeight.w400,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    MyText(
                      title: 'Didn’t receive a code?',
                      size: 14,
                      color: Colors.black87,
                      weight: FontWeight.w400,
                    ),
                    MyText(
                      title: 'Resend Code',
                      size: 13,
                      color: Color(0xff5771F9),
                      weight: FontWeight.w400,
                    ),
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
