// import 'dart:math';
//import 'dart:developer' ;

import 'dart:developer';

import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:bmi_calculator1/widgets/global_button.dart';
import 'package:bmi_calculator1/widgets/global_input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController usernameController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();
  String get username => usernameController.text;
  String get password => passwordController.text;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlobalInput(
              controller: usernameController,
              text: 'Username',
              prefixIcon: Icons.person_rounded,
            ),
            const SizedBox(
              height: 16,
            ),
            GlobalInput(
              controller: passwordController,
              text: 'Password',
              prefixIcon: Icons.lock_rounded,
              isPassword: true,
            ),
            const SizedBox(
              height: 32,
            ),
            GlobalButton.auth(
              text: 'login',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  log('username: $username');
                  log('username: $password');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Center(child: Text('Fill all blanks')),
                    duration: Duration(seconds: 10),
                    margin: EdgeInsets.all(16),
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: AppColors.red,
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
