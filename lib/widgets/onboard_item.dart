import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:bmi_calculator1/widgets/title_text.dart';
import 'package:flutter/material.dart';

class OnboardItem extends StatelessWidget {
  const OnboardItem(
      {super.key,
      required this.title,
      required this.description,
      required this.imageUrl});

  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleText(
          title: title,
          color: AppColors.white,
          fontSize: 30,
        ),
        const SizedBox(
          height: 16,
        ),
        TitleText(title: description),
        const SizedBox(
          height: 32,
        ),
        Image.asset(imageUrl),
        // ignore: deprecated_member_use
       // SvgPicture.asset(imageUrl,color: AppColors.white,),
      ],
    );
  }
}
