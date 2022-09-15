import 'package:flutter/material.dart';
import '../widgetssss/app_button.dart';
import '../widgetssss/my_text.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({Key? key}) : super(key: key);

  @override
  State<InviteFriends> createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 74),

              // creating the two directional buttons

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

              SizedBox(height: 70),

              // importing images

              Center(
                child: Image.asset("assets/images/invite.png"),
              ),

              SizedBox(height: 50),

              Center(
                child: Image.asset(
                  "assets/images/dollar.png",
                ),
              ),

              SizedBox(height: 17),

              //creating texts

              Container(
                width: 378,
                height: 52,
                color: Colors.white,
                child: Column(
                  children: [
                    MyText(
                      title: 'Invite your friend and you can earn up to \$100 ',
                      size: 18,
                      color: Colors.black87,
                      weight: FontWeight.bold,
                    ),
                    MyText(
                      title: "for every 5 friends who transfer over \$400",
                      size: 18,
                      color: Colors.black87,
                      weight: FontWeight.bold,
                    )
                  ],
                ),
              ),

              SizedBox(height: 30),

              Container(
                height: 28,
                width: 141,
                color: Colors.white,
                child: Row(
                  children: [
                    MyText(
                      title: 'Terms and Conditions',
                      size: 14,
                      color: Colors.black87,
                      weight: FontWeight.bold,
                    )
                  ],
                ),
              ),

              SizedBox(height: 30),

              // creating customized container

              Container(
                width: 332,
                height: 73,
                decoration: BoxDecoration(
                  color: Color(0xff5771F9),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 35),
                    MyText(
                      title: 'Invite friends now',
                      size: 18,
                      color: Colors.white,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(width: 94),
                    AppButton(
                      textColor: Colors.black,
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
            ],
          ),
        ),
      ),
    );
  }
}
