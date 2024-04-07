import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:bmi_calculator1/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GlobalInput extends StatefulWidget {
  const GlobalInput(
      {super.key,
      required this.text,
      this.prefixIcon,
      this.isPassword = false,
      this.controller});
      
  final String text;
  final IconData? prefixIcon;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  State<GlobalInput> createState() => _GlobalInputState();
}

class _GlobalInputState extends State<GlobalInput> {
  bool show = true;

  void showAndHide() {
    show = !show;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (v) {
        return v.checkValidetion;
      },
      controller: widget.controller,
      obscureText: widget.isPassword ? show : false,
      style: const TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        errorText: '',
        errorStyle: const TextStyle(height: 0),
        labelText: widget.text,
        labelStyle: const TextStyle(fontSize: 20, color: AppColors.white),
        //hintText: 'Username',
        hintStyle: const TextStyle(color: AppColors.grey),
        prefixIcon: Icon(
          widget.prefixIcon,
          color: AppColors.grey,
        ),
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () => showAndHide(),
                child: Icon(
                  !show ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                  color: AppColors.white,
                  size: 16,
                ),
              )
            : null,
      ),
    );
  }
}
