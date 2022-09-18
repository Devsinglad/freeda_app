import 'package:flutter/material.dart';
import '../widgets/app_button.dart';
import '../widgets/app_button2.dart';
import '../widgets/my_text.dart';

class ForgetPasswordFill extends StatefulWidget {
  const ForgetPasswordFill({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordFill> createState() => _ForgetPasswordFillState();
}

class _ForgetPasswordFillState extends State<ForgetPasswordFill> {
  final _emailcontroller = TextEditingController();

  void dispose() {
    _emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 58),

              // creating text

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    AppButton(
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                      borderColor: Colors.grey,
                      text: "",
                      size: 40,
                      isIcon: true,
                      icon: Icons.arrow_back,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 100),

              Center(
                child: MyText(
                  title: 'Forgot Password',
                  size: 44,
                  color: Color(0xff151940),
                  weight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 17),

              Container(
                height: 52,
                width: 315,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        MyText(
                          title: 'Please enter your ',
                          size: 18,
                          color: Colors.black87,
                        ),
                        MyText(
                          title: 'email address or',
                          size: 18,
                          color: Colors.black87,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyText(
                          title: 'phone number',
                          size: 18,
                          color: Colors.black87,
                          weight: FontWeight.bold,
                        ),
                        MyText(
                          title: ' to reset your password',
                          size: 18,
                          color: Colors.black87,
                          weight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 70),

              //creating email textformfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    height: 56,
                    width: 346,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                          controller: _emailcontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'michael.moore@mail.com',
                          ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffF5F6FA),
                      border: Border.all(color: Color(0xff5771F9)),
                      borderRadius: BorderRadius.circular(8),
                    )),
              ),

              SizedBox(height: 64),

              // creating a button

              AppButtonBig(
                textColor: Colors.white,
                backgroundColor: Color(0xff5771F9),
                borderColor: Colors.grey,
                text: "Send",
                height: 56,
                width: 332,
                value: 8,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
