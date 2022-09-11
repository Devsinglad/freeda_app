import 'package:flutter/material.dart';

import '../widget/reuseablewidget.dart';
import 'onboarding1.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  initState(){
    super.initState();
    Future.delayed(Duration(seconds: 20),(){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Onboarding1()));
    });
  }

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff5771F9),
        body: Column(
          children: <Widget>[
            SizedBox(height: 216.81),
            Center(child: logowidget('images/Logo (1).png')),
            SizedBox(height: 24),
            Text('Wallet',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 65,
                  color: Colors.white
              ),
            ),
            Center(
              child: Text('Money Transfer, Wallet &\nFinance UI Kit',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 97),
            SizedBox(
              height:78,
              width:332,
              child:ElevatedButton(
                child: Text('Get Started Now',
                  style : TextStyle(
                    color: Color(0xff5771F9),
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboarding1()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape:RoundedRectangleBorder(borderRadius:
                  BorderRadius.all(Radius.circular(8))),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

