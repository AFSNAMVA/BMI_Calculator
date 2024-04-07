import 'package:flutter/material.dart';

class InputBorders {
 static OutlineInputBorder inputBorder(Color borderColor) =>  OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: borderColor,
        ),
      );
}
