import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/register1.dart';

class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5771F9),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height:179,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30,left: 34),
              child: Image.asset("assets/images/Frame 2.png",),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 41,top: 34),
                  child: Text("Welcome",
                    textAlign: TextAlign.left,
                    style:  TextStyle(
                        fontSize: 44,
                        color: Colors.white
                    ),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 41,top: 23),
                  child: Text("Stay on top effortlessly tracking your\n subscription & bills",
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 94,
                width: 94,
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register1()));
                },
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.white

                    ),
                    child:Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF314BCE),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
