import 'package:bmi_calculator1/widgets/gender_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderBoxes extends StatefulWidget {
  const GenderBoxes({
    super.key,
  });
  // final void Function()? maleTap;
  // final void Function()? femaleTap;

  @override
  State<GenderBoxes> createState() => _GenderBoxesState();
}

class _GenderBoxesState extends State<GenderBoxes> {
  Color? maleColor;
  Color? femaleColor;

  void changeBoxColor(Color? maleColor, Color? femaleColor) {
    this.maleColor = maleColor;
    this.femaleColor = femaleColor;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderBox(
          genderIcon: FontAwesomeIcons.mars,
          genderText: 'MALE',
          boxColor: maleColor,
          onTap: () {
            changeBoxColor(Colors.pink.withOpacity(0.3), null);
          },
        ),
        const SizedBox(
          width: 16,
        ),
        GenderBox(
          genderIcon: FontAwesomeIcons.venus,
          genderText: 'FEMALE',
          boxColor: femaleColor,
          onTap: () {
         changeBoxColor(null ,Colors.pink.withOpacity(0.3), );

          },
        ),
      ],
    );
  }
}
