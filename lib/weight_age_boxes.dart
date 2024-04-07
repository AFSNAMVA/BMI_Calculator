import 'package:bmi_calculator1/weight_age_box.dart';
import 'package:flutter/material.dart';

//import 'weight_age_box.dart';

class WeightAgeBoxes extends StatefulWidget {
  const WeightAgeBoxes({super.key, required this.onMinus, required this.onPlus, required this.weight});
  final void Function() onMinus;
  final void Function() onPlus;
  final String weight;
  @override
  State<WeightAgeBoxes> createState() => _WeightAgeBoxesState();
}
int age = 28;

class _WeightAgeBoxesState extends State<WeightAgeBoxes> {



  @override

  Widget build(BuildContext context) {
    return Row(
      children: [
         WeightAgeBox(
          weightageNum: widget.weight,
          weightageText: 'WEİGHT',
         onMinus: widget.onMinus,
          onPlus: widget.onPlus,
        ),
        const SizedBox(
          width: 16,
        ),
       
        WeightAgeBox(
          weightageNum: '$age',
          weightageText: 'AGE',
          onMinus: () {
            if (age > 0) {
              age--;
              setState(() {});
            }
          },
          onPlus: () {
            if (age < 100) {
              age++;
              setState(() {});
            }
          },
        ),
        
      ],
    );
  }
}
