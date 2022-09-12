import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String title;
  final weight;
  final double size;
  final Color color;

  const MyText({
    Key? key,
    required this.title,
    required this.size,
    this.weight,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}