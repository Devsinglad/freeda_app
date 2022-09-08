import 'package:flutter/material.dart';
import 'package:joint_project/screens/balances_screen/balances.dart';
// import 'package:freeda_app/screens/convert_screen/convert.dart';
// import 'package:freeda_app/screens/balances_screen/balances.dart';

import 'screens/total_balance_graph_screen/total_balance_graph.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Balances(),
    );
  }
}
