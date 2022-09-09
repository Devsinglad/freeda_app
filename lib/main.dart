import 'package:flutter/material.dart';
import 'package:freeda_app/screens/transferred_screen/transferred_screen.dart';
import 'package:freeda_app/screens/add_new_card/add_new_card_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddNewCardScreen(),
    );
  }
}
