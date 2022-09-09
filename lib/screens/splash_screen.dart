import 'package:flutter/material.dart';
import 'package:freeda_app/widgets/MyText.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyText(
        color: Colors.green,
        title: 'singlad',
        weight: FontWeight.w500,
        size: 29,
      ),
    );
  }
}
