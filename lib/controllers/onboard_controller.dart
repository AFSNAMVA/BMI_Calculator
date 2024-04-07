import 'package:bmi_calculator1/bmi_page.dart';
import 'package:bmi_calculator1/constants/preference_keys.dart';
import 'package:bmi_calculator1/helpers/navigate.dart';
import 'package:bmi_calculator1/pages/onboard_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardController {
  static Future<void> saveData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool(PreferenceKeys.isSeenOnboard, true);
  }

  static Future<void> removeData() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(PreferenceKeys.isSeenOnboard);
  }
static void navigateOnboardPage(BuildContext context) async {
    await removeData().then((value) => Navigate.replace(context, const OnboardPage()));
  }
  static void navigateBmiPage(BuildContext context) async {
    await saveData().then((value) => Navigate.replace(context, const BmiPage()));
  }
}
