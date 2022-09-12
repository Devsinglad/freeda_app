import 'package:flutter/material.dart';

import '../widgetssss/app_button2.dart';
import '../widgetssss/my_text.dart';

class Verified extends StatefulWidget {
  const Verified({Key? key}) : super(key: key);

  @override
  State<Verified> createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 106),

              // import image
              Center(
                child: Image.asset("images/verified.png"),
              ),

              SizedBox(height: 60),

              // creating text

              MyText(title: "Welcome Mickey!", size: 30, color: Colors.white),

              SizedBox(height: 23),

              MyText(
                  title: "It seems everything went well and your ",
                  size: 18,
                  color: Colors.white),
              MyText(
                  title: "app is ready to work with you",
                  size: 18,
                  color: Colors.white),

              SizedBox(height: 39),

              // creating customised button

              AppButtonBig(
                  textColor: Colors.black87,
                  backgroundColor: Colors.white,
                  borderColor: Colors.white,
                  text: "Get Started",
                  height: 56,
                  width: 185,
                  value: 8),
            ],
          ),
        ),
      ),
    );
  }
}
