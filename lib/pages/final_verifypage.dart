import 'package:flutter/material.dart';

class Final_verify extends StatefulWidget {
  const Final_verify ({Key? key}) : super(key: key);

  @override
  State<Final_verify> createState() => _Final_verifyState();
}

class _Final_verifyState extends State<Final_verify> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
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

          ],
        ),
      ),
    );
  }
}
