import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:flutter/material.dart';

class AppConstants {
  const AppConstants._();

  static const Map<int, String> resultText = {
    0: 'UNDERWEİGHT',
    1: 'NORMAL',
    2: 'OVERWEİGHT'
  };

  static const Map<int, Color> resultTextColor = {
    0: AppColors.yellow,
    1: AppColors.green,
    2: AppColors.red,
  };
  static const Map<int, String> resultDescriptions = {
    0: 'Your body is underweight.',
    1: 'Your body is normal.',
    2: 'Your body is overweight.',
  };
}
