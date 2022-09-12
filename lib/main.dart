import 'package:flutter/material.dart';
import 'package:freeda_app/pages/final_verifypage.dart';
import 'package:freeda_app/pages/register1.dart';
import 'package:freeda_app/pages/register2.dart';

import 'package:freeda_app/screenss/splashscreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:joint_project/screens/total_balance_graph.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: SplashScreen(),
    );
  }
}

