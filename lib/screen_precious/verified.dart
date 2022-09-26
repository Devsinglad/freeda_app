import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/screen_precious/signin.dart';

import '../widgets/app_button2.dart';
import '../widgets/my_text.dart';

class Verified extends StatefulWidget {
  const Verified({Key? key}) : super(key: key);

  @override
  State<Verified> createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  String? fullName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firebaseUserInfo();
  }

  Future<void> firebaseUserInfo() async {
    final firebaseUser = FirebaseAuth.instance.currentUser?.email;
    var name = await FirebaseFirestore.instance
        .collection("users")
        .doc(firebaseUser)
        .get()
        .then((value) {
      fullName = value['firstname'];

      setState(() {});
      print(value.data());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5771F9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 106),

              // import image
              Center(
                child: Image.asset("assets/images/verified.png"),
              ),

              SizedBox(height: 60),

              // creating text

              MyText(title: fullName.toString(), size: 30, color: Colors.white),

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

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: AppButtonBig(
                    textColor: Colors.black87,
                    backgroundColor: Colors.white,
                    borderColor: Colors.white,
                    text: "Get Started",
                    height: 56,
                    width: 185,
                    value: 8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
