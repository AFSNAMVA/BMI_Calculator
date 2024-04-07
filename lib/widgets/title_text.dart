//import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.title,
    this.fontSize,
    this.color, 
  });

  final String title;
  final double? fontSize;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      
      style: TextStyle( 
          color: color ?? const Color.fromARGB(255, 103, 104, 122),
          fontSize: fontSize ?? 20,  ),
         
    );
    
  }
}
