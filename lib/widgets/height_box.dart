import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:bmi_calculator1/widgets/number_text.dart';
import 'package:bmi_calculator1/widgets/rounded_box.dart';
import 'package:bmi_calculator1/widgets/title_text.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatelessWidget {
  const HeightBox({super.key, this.onSlide, required this.height});

  final double height;
  final void Function(double)? onSlide;

  
  @override

  Widget build(BuildContext context) {
    return RoundedBox(
      child: Column(
        children: [
          const TitleText(title: 'HEİGHT',),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.ideographic,
            children: [
              NumberText(numericText: '${height.round()}'),
              const TitleText(title: 'cm', fontSize: 16),
            ],
          ),
          Slider.adaptive(
              min: 100,
              max: 200,
              value: height,
              thumbColor: AppColors.pink,
              activeColor: AppColors.white,
              inactiveColor: AppColors.titleColor,
              onChanged: onSlide),
        ],
      ),
    );
  }
}
