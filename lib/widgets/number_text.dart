import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
  const NumberText({super.key, required this.numericText});
  final String numericText;
  @override
  Widget build(BuildContext context) {
    return Text(
      numericText,
      style: const TextStyle(
          color: Color(0xFFFFFFFF), fontSize: 50, fontWeight: FontWeight.bold),
    );
  }
}
