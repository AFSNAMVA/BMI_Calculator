import 'package:bmi_calculator1/pages/page_indicators.dart';
import 'package:bmi_calculator1/widgets/skip_button.dart';
import 'package:flutter/material.dart';

class OnboardHeader extends StatelessWidget implements PreferredSizeWidget {
  const OnboardHeader({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
     preferredSize: preferredSize,
      child: AppBar(
          elevation: 0,
          leading: PageIndicators(
            controller: controller,
          ),
          actions: const [SkipButton()]),
    );
  }
  
  @override
  
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
