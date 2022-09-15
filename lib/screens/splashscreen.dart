import 'package:flutter/material.dart';

import '../widgets/reuseablewidget.dart';
import 'onboarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff5771F9),
        body: Column(
          children: <Widget>[
            SizedBox(height: 216.81),
           Center(child: logowidget('assets/images/Logo.png')),
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
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
              },
              child: Container(height: 56,
                width: 332,
                color: Colors.white,

                child: Center(
                  child: Text('Get Started Now',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color(0xff5771F9)),
              ),
                ),),
            )
          ],
        ),
      ),
    );
  }
}
