
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/screenme/verified.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class VerifyCode extends StatefulWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  State<VerifyCode> createState() => _VerifyState();
}

class _VerifyState extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: SizedBox(
                height: 47,
                width: 47,
                child: ElevatedButton(onPressed:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Verified()));
                },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius:
                      BorderRadius.circular(8)),
                      primary: Colors.white,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xff000000),
                    )),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: Text("Verify Code",
                style: TextStyle(
                  fontSize: 44,
                  color: Colors.black,
                ),),
            ),
            SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: Text("Ckeck your SMS inbox,we have sent\nyou the code at +0 000 000 0000",
                style: TextStyle(
                  fontSize:18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),),
            ),
            SizedBox(
              height: 54,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 41,right: 41),
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                appContext: context,
                length: 4,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  activeColor: Color(0xff5771F9),
                  inactiveColor:Color(0xff5771F9),
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                ),
                animationDuration: Duration(milliseconds: 300),
                onCompleted: (v) {
                  Navigator.push(
                      context, MaterialPageRoute(builder:
                      (context)=>Verified()));
                                  },
                onChanged: (value) {
                  print(value);
                  setState(() {
                  });
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 41),
              child: Row(
                children: [
                  Text("Didn't receive a code ?",style: TextStyle(
                      color: Color(0xff486484)
                  ),),
                  Text("Resend Code",style: TextStyle(
                      color: Color(0xff5771F9)
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
