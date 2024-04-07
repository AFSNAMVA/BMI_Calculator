import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:bmi_calculator1/bmi_page.dart';
import 'package:bmi_calculator1/constants/input_borders.dart';
import 'package:bmi_calculator1/constants/preference_keys.dart';
import 'package:bmi_calculator1/pages/onboard_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  bool? isSeenOnboard = sharedPreferences.getBool(PreferenceKeys.isSeenOnboard);
  runApp(MyApp(
    isSeenOnboard: isSeenOnboard,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.isSeenOnboard});
  final bool? isSeenOnboard;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bmi Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.amber,
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.primary,
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.primary,
            centerTitle: true,
            titleTextStyle: TextStyle(color: AppColors.white, fontSize: 24)),
            inputDecorationTheme:  InputDecorationTheme(
              border: InputBorders.inputBorder(AppColors.white),
              enabledBorder: InputBorders.inputBorder(AppColors.grey),
              focusedBorder: InputBorders.inputBorder(AppColors.pink),
            ),
            
      ),
      home: isSeenOnboard == false || isSeenOnboard == null
          ? const OnboardPage()
          : const BmiPage(),
    );
  }
}
