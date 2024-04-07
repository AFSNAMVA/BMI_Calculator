import 'dart:math' as math;
import 'dart:developer' as dev;

import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:bmi_calculator1/controllers/onboard_controller.dart';
import 'package:bmi_calculator1/helpers/navigate.dart';
import 'package:bmi_calculator1/mixins/calculation_mixin.dart';
import 'package:bmi_calculator1/pages/result_page.dart';
import 'package:bmi_calculator1/weight_age_boxes.dart';
import 'package:bmi_calculator1/widgets/global_button.dart';
import 'package:bmi_calculator1/widgets/gender_boxes.dart';
import 'package:bmi_calculator1/widgets/height_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'dart:math' as math;

class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> with CalculationMixin {
  double result = 0;
  double height = 180;
  double weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.primary, // <-- SEE HERE
          statusBarIconBrightness:
              Brightness.light, //<-- For Android SEE HERE (dark icons)
          //statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        title: const Text('Bmi Calculator'),
        actions: [
          IconButton(
              onPressed: ()  {
                OnboardController.navigateOnboardPage(context);
              },
              icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const GenderBoxes(),
              const SizedBox(
                height: 20,
              ),
              HeightBox(
                height: height,
                onSlide: (v) {
                  onSlide(v);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              WeightAgeBoxes(
                weight: weight.toStringAsFixed(0), //fitted box bax
                onMinus: () {
                  onMinus();
                },
                onPlus: () => onPlus(),
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: GlobalButton(
        text: 'CALCULATE',
        onTap: () {
          onCalculate();
        },
      ),
    );
  }

  void onCalculate() {
    result = (weight / math.pow(height, 2)) * 10000;
    dev.log('result: $result');
    Navigate.to(
        context,
        Result(
          result: result,
        ));
  }

  void onSlide(double v) {
    height = v;
    setState(() {});
  }

  void onMinus() {
    if (weight > 0) {
      weight--;
      setState(() {});
    }
  }

  void onPlus() {
    if (weight < 100) {
      weight++;
      setState(() {});
    }
  }
}
