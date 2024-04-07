import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:bmi_calculator1/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class RoundedBox extends StatelessWidget {
  const RoundedBox({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceWidth,
     // height: 200,
        padding: const EdgeInsets.all(24),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:color?? AppColors.lightPrimary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child);
  }
}
