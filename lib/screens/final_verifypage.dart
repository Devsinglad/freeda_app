
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/screenme/verified.dart';
import 'package:freeda_app/widgets/password_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class VerifyCode extends StatefulWidget {
  final String phone;
  final String codeDigits;

  const VerifyCode({
    super.key,
    required this.phone,
    required this.codeDigits});

  @override
  State<VerifyCode> createState() => _VerifyState();
}

class _VerifyState extends State<VerifyCode> {

  final GlobalKey<ScaffoldState> _scaffoldkey =GlobalKey<ScaffoldState>();
   TextEditingController _pinCode = TextEditingController();
  final FocusNode _pinOTPCodeFocus= FocusNode();
  String? verificationCode;


   final BoxDecoration pinOTPCodeDecoration = BoxDecoration(
     color: Colors.blueAccent,
     borderRadius: BorderRadius.circular(10),
     border: Border.all(
       color: Colors.grey,
     )
      );

   @override
  void initState() {
     verifyPhone();
     super.initState();
  }
  verifyPhone() async {
     await   FirebaseAuth.instance.verifyPhoneNumber(
       phoneNumber: "${widget.codeDigits+widget.phone}",
         verificationCompleted: (PhoneAuthCredential credential)async
         {
           await FirebaseAuth.instance.signInWithCredential(credential).then((value) {
             if(value.user!=null){
               Navigator.push(
                   context , MaterialPageRoute(builder:
                   (context)=>Verified()));
             }
           });
         },
         verificationFailed: (FirebaseAuthException e){
           ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(content: Text(e.message.toString()),
                 duration: Duration(seconds: 3),
               ),
           );
         },
         codeSent: (String vID, int?   resendToken){
         setState(() {
           verificationCode=vID;
         });
         },
         codeAutoRetrievalTimeout: (String vID){

         setState(() {
    verificationCode=vID;
    });
         },
    timeout: Duration(seconds: 60),
     );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 41.0,right: 41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
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
                SizedBox(
                  height: 80,
                ),
                Text("Verify Code",
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.black,
                  ),),
                SizedBox(
                  height: 11,
                ),

                RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Color(0xff151940),
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(text: 'Check your SMS inbox, we have sent \nyou the code at  ',
                            style: TextStyle(fontWeight: FontWeight.w400)),
                        TextSpan(text: "${widget.codeDigits}-${widget.phone}", style: TextStyle(fontWeight: FontWeight.w700)),
                      ]
                  ),
                ),
                SizedBox(
                  height: 54,
                ),
                PinCodeTextField(
                  keyboardType: TextInputType.number,
                  appContext: context,
                  length: 4,
                  focusNode:_pinOTPCodeFocus,
                  controller: _pinCode,
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
                  onCompleted: (v) async {
                    try {
                      await FirebaseAuth.instance.signInWithCredential(
                          PhoneAuthProvider.
                          credential(
                              verificationId: verificationCode!, smsCode: v)).
                      then((value){
                        if(value.user!=null){
                          Navigator.push(
                              context , MaterialPageRoute(builder:
                              (context)=>Verified()));
                        }
                      });
                    }
                    catch(e){
                      FocusScope.of(context).unfocus();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Invalid OTP'),
                        duration: Duration(seconds: 3),
                        ),
                      );
                    }
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
                Padding(
                  padding: const EdgeInsets.only(left: 41),
                  child: Row(
                    children: [
                      Text("Didn't receive a code ?",style: TextStyle(
                          color: Color(0xff486484)
                      ),),
                      GestureDetector(
                        onTap: (){
                          verifyPhone();
                        },
                        child: Text("Resend Code",style: TextStyle(
                            color: Color(0xff5771F9)
                        ),),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
