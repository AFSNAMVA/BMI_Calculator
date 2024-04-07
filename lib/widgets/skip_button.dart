import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:bmi_calculator1/controllers/onboard_controller.dart';
import 'package:bmi_calculator1/widgets/title_text.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          OnboardController.navigateBmiPage(context);
        },
        child: const Row(
          children: [
            TitleText(
              title: 'Skip',
              fontSize: 13,
              color: AppColors.white,
            ),
            Icon(
              Icons.arrow_forward_outlined,
              color: AppColors.white,
              size: 13,
            )
          ],
        ),
      ),
    );
  }
}
