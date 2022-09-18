import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../widgets/my_text.dart';
import '../widgets/text_form.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
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
                    TextForms(height: 60, width: 40),
                    TextForms(height: 60, width: 40),
                    TextForms(height: 60, width: 40),
                    TextForms(height: 60, width: 40),
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
