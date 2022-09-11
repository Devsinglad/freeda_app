import 'package:flutter/material.dart';

import '../widget/reuseablewidget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff5771F9),
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 179),
              Stack(
                children: [
                  Center(child: logowidget('images/Verify.png')),
                  Positioned(
                      bottom: 90,
                      left:80 ,
                      child: logowidget('images/topdot.png')),
                  Positioned
                    (top: 5,
                    left: 240,
                    child:logowidget('images/bottomdot.png'),
                  )],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text('Welcome',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 44,
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 23,),
              Center(
                child: Text('Stay on top by effortlessly tracking\nyour subscriptions & bills',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Center(
                child: Container(
                  height: 94,
                  width: 94,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      shape: BoxShape.circle
                  ),
                  child: logowidget('images/arrow.png'),
                ),
              ),
              SizedBox(height: 17,),
            ],
          ),
        ),
      ),
    );
  }
  }

