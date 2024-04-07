import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:bmi_calculator1/bmi_page.dart';
import 'package:bmi_calculator1/constants/app_constants.dart';
import 'package:bmi_calculator1/helpers/navigate.dart';
import 'package:bmi_calculator1/widgets/global_button.dart';
import 'package:bmi_calculator1/widgets/rounded_box.dart';
import 'package:bmi_calculator1/widgets/title_text.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.result});
  final double result;
  @override
  Widget build(BuildContext context) {
    int index;
    if (result >= 18.5 && result <= 24) {
      index = 1;
    } else if (result >= 24.5) {
      index = 2;
    } else {
      index = 0;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const TitleText(
              title: 'Your Result',
              fontSize: 35,
              color: AppColors.white,
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: RoundedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                      title: AppConstants.resultText[index]!,
                      color: AppConstants.resultTextColor[index]!,
                    ),
                    TitleText(
                      title: result.toStringAsFixed(1),
                      fontSize: 70,
                      color: AppColors.white,
                    ),
                    TitleText(
                      title: AppConstants.resultDescriptions[index]!,
                      color: AppColors.white,
                      fontSize: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GlobalButton(
        text: 'RE-CALCULATE',
        // onCalculate: () => Navigator.pop(context),
        onTap: () => Navigate.replace(context, const BmiPage()),
      ),
    );
  }
}
