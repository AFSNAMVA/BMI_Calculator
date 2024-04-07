import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.isCalculate = true,
      this.borderRadius = const BorderRadius.all(Radius.circular(24))});

  const GlobalButton.auth(
      {super.key,
      required this.onTap,
      required this.text,
      this.isCalculate = false,
      this.borderRadius = const BorderRadius.all(Radius.circular(10))});

  final void Function() onTap;
  final String text;
  final bool isCalculate;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.pink, borderRadius: borderRadius),
        height: 70,
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
