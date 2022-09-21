
import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/models/userProfile.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/customButton.dart';

import '../screen_precious/signin.dart';

class App_Drawer extends StatelessWidget {
  const App_Drawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
        //backgroundColor: Colors.red,
        width: 300,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          borderSide: BorderSide.none,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              userData(
                imageUrl: 'assets/images/image.png',
                name: 'Domhnall Gleeson',
                country: 'United States',
              )
            ],
          ),
        ));
  }
}

Widget userData({
  required String imageUrl,
  required String name,
  required String country,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MyText(
        title: 'CLOSE',
        size: 15,
        color: Color(0xff7F8192),
        weight: FontWeight.w500,
      ),
      SizedBox(
        height: 12,
      ),
      Image.asset(imageUrl),
      SizedBox(
        height: 15,
      ),
      MyText(
        title: name,
        size: 26,
        color: Colors.black,
        weight: FontWeight.bold,
      ),
      MyText(
        title: country,
        size: 16,
        color: Colors.black,
        weight: FontWeight.w500,
      ),
      SizedBox(
        height: 17,
      ),
      MyText(
        title: 'Profile',
        size: 18,
        color: Color(0xff7F8192),
      ),
      Divider(
        thickness: 2,
      ),
      SizedBox(
        height: 17,
      ),
      MyText(
        title: 'My Accounts',
        size: 18,
        color: Color(0xff7F8192),
      ),
      Divider(
        thickness: 2,
      ),
      SizedBox(
        height: 17,
      ),
      MyText(
        title: 'History',
        size: 18,
        color: Color(0xff7F8192),
      ),
      Divider(
        thickness: 2,
      ),
      SizedBox(
        height: 17,
      ),
      Row(
        children: [
          MyText(
            title: 'Debit Card',
            size: 18,
            color: Color(0xff7F8192),
          ),
          SizedBox(
            width: 21,
          ),
          CustomButton(
              Center(
                child: MyText(
                  title: 'NEW',
                  size: 12,
                  color: Colors.white,
                  weight: FontWeight.w500,
                ),
              ),
              24,
              47,
              Color(0xff5771F9),
              5,
              Colors.transparent,
              0,
              0)
        ],
      ),
      Divider(
        thickness: 2,
      ),
      SizedBox(
        height: 17,
      ),
      MyText(
        title: 'Settings',
        size: 18,
        color: Color(0xff7F8192),
      ),
      SizedBox(
        height: 214,
      ),
      GestureDetector(
        onTap: (){
          // FirebaseAuth.instance.signOut().then((value) {
          //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()));});
          },
        child: Row(
          children: [
            MyText(
              title: 'LOGOUT',
              size: 16,
              color: Color(0xff5771F9),
              weight: FontWeight.w700,
            ),
            SizedBox(
              width: 36.65,
            ),
            Icon(
              Icons.arrow_forward,
              color: Color(0xff5771F9),
            )
          ],
        ),
      )
    ],
  );
}
