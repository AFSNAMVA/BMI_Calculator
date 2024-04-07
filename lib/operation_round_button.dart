
import 'package:bmi_calculator1/bmi_colors.dart';
import 'package:flutter/material.dart';

class OperationRoundButton extends StatelessWidget {
  const OperationRoundButton({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
          width: 50,
          height: 50,
          decoration:  const BoxDecoration(
              shape: BoxShape.circle,
               color: AppColors.titleColor,
               boxShadow:[BoxShadow(
                blurRadius: 2,
                spreadRadius: 1,
                offset: Offset(0, 5)
               ),
               ],
              ),
          child: Icon(
            icon,
            size: 30,
            color: AppColors.white,
          )),
    );
  }
}
