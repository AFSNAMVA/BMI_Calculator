import 'package:bmi_calculator1/operation_round_button.dart';
import 'package:bmi_calculator1/widgets/number_text.dart';
import 'package:bmi_calculator1/widgets/rounded_box.dart';
import 'package:bmi_calculator1/widgets/title_text.dart';
import 'package:flutter/material.dart';

class WeightAgeBox extends StatelessWidget {
  const WeightAgeBox(
      {super.key, required this.weightageText, required this.weightageNum, required this.onMinus, required this.onPlus});
  final String weightageText;
  final String weightageNum;
  final void Function() onMinus;
  final void Function() onPlus;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          RoundedBox(
              child: Column(
            children: [
              TitleText(
                title: weightageText,
                fontSize: 25,
                //color: AppColors.lightPrimary
              ),
              NumberText(
                numericText: weightageNum,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OperationRoundButton(
                    icon: Icons.remove_rounded,
                    onTap: onMinus,
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  OperationRoundButton(
                    icon: Icons.add_rounded,
                    onTap:onPlus,
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
