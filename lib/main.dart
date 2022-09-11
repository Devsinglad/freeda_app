import 'package:flutter/material.dart';
import 'package:joint_project/screens/add_new_card/add_new_card_screen.dart';
import 'package:joint_project/screens/total_balance_graph.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
