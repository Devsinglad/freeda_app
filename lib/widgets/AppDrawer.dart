import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/models/userProfile.dart';
import 'package:freeda_app/screens/Row3/edit_profile.dart';
import 'package:freeda_app/widgets/MyText.dart';
import 'package:freeda_app/widgets/customButton.dart';

import '../screen_precious/signin.dart';
import '../screens/Row4/add_new_card/add_new_card_screen.dart';
import '../screens/transferred_screen/transferred_screen.dart';

class App_Drawer extends StatefulWidget {
  const App_Drawer({
    Key? key,
  }) : super(key: key);

  @override
  State<App_Drawer> createState() => _App_DrawerState();
}

class _App_DrawerState extends State<App_Drawer> {
  String? fullName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //localstorage();
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
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: UserData(
          imageUrl: 'assets/images/image.png',
          name: fullName.toString(),
          country: 'United States',
        ),
      ),
    );
  }
}

class UserData extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String country;
  const UserData(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.country})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: MyText(
            title: 'CLOSE',
            size: 15,
            color: Color(0xff7F8192),
            weight: FontWeight.w500,
          ),
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
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EditProfile()));
          },
          child: MyText(
            title: 'Profile',
            size: 18,
            color: Color(0xff7F8192),
          ),
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
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Transferred()));
          },
          child: MyText(
            title: 'History',
            size: 18,
            color: Color(0xff7F8192),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(
          height: 17,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewCardScreen()));
              },
              child: MyText(
                title: 'Debit Card',
                size: 18,
                color: Color(0xff7F8192),
              ),
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
          height: 150,
        ),
        GestureDetector(
          onTap: () {
            FirebaseAuth.instance.signOut().then((value) {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            });
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
}
