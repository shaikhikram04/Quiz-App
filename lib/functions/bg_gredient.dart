import 'package:flutter/material.dart';
import 'package:quiz_app/ui_helpers/color_util.dart';

BoxDecoration bgGredient() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [
        gredientColorTop,
        gredientColorBottom,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}