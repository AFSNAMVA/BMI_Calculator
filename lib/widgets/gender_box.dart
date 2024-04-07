import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:bmi_calculator1/widgets/rounded_box.dart';
import 'package:bmi_calculator1/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderBox extends StatelessWidget {
  const GenderBox({
    super.key,
    required this.genderText,
    required this.genderIcon,
    this.onTap,
    this.boxColor,
  });

  final IconData genderIcon;
  final String genderText;
  final void Function()? onTap;
  final Color? boxColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: RoundedBox(
          color: boxColor,
          // height: 150,
          //width: 150,
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                genderIcon,
                color: AppColors.white,
                size: 60,
              ),
              const SizedBox(
                height: 15,
              ),
              TitleText(title: genderText,)
            ],
          ),
        ),
      ),
    );
  }
}
