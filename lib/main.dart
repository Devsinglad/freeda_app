import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:freeda_app/screenme/invitefriends.dart';
import 'package:freeda_app/screenme/recipients.dart';
import 'package:freeda_app/screenme/selectrecipients.dart';
import 'package:freeda_app/screenme/verified.dart';
import 'package:freeda_app/screens/convert_screen/convert.dart';
import 'package:freeda_app/screens/error_screens/error_screen_location_access.dart';
import 'package:freeda_app/screens/mainScreen.dart';
import 'package:freeda_app/screens/register2.dart';

import 'package:freeda_app/screens/splashscreen.dart';
import 'package:device_preview/device_preview.dart';

import 'models/Balances.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: MyHomePage(),
    );
  }
}

