import 'package:flutter/material.dart';
import 'package:joint_project/screens/error_screens/error_screen_no_new_activity.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NoNewActivity(),
    );
  }
}
