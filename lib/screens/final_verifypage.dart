import 'package:flutter/material.dart';
import '../widget/reuseablewidget.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 34.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 250.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_back,
                    ),
                  ),),
              ),
            ),
            SizedBox(height: 189,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 140),
                child: Text(
                  'Verify Code',
                  style: TextStyle(
                      fontFamily: 'Gilroy-Bold',
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff151940)),
                ),
              ),
            ),
            SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('Check your SMS inbox, we have sent '
                  'you the code at +0 000 000 0000.',
                style: TextStyle(
                    fontFamily: 'Gilroy-Bold',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff151940)),),
            ),
            SizedBox(height: 41),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: DashForm(),
                ),
                Spacer(),
                DashForm(),
                Spacer(),
                DashForm(),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: DashForm(),
                ),
              ],
            ),
            SizedBox(height: 41),
            Padding(
              padding: const EdgeInsets.only(right: 140.0),
              child: Text('Didn’t receive a code? '
                  'Resend Code'),
            )
          ],
        ),
      ),
    );
  }
}
