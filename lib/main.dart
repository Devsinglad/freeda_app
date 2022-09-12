import 'package:flutter/material.dart';
import 'package:freeda_app/screenme/forgetpassword.dart';
import 'package:freeda_app/screenme/paymentsuccessful.dart';
import 'package:freeda_app/screenme/selectrecipients.dart';
import 'package:freeda_app/screenme/signin.dart';
void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
