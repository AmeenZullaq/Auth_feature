import 'package:flutter/material.dart';

abstract class AppColors {
  /// App Colors ...
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const green5B0 = Color(0xFFA3C5B0); // spring rain
  static const green014 = Color(0xFF035014); // camarone
  static const greenFA0 = Color(0xFF97BFA0); // summer green
  static const green5B9 = Color(0xFFB6E5B9); // celadon
  static const green71A = Color(0xFF74A71A); //christi
  static const greenF05 = Color(0xFF567F05); //limeade
  static const grey3BA = Color(0xFFAEB3BE); //aluminium
  static const grey340 = Color(0xFF25A340); //forst green
  static const greyF67 = Color(0xFF657F67);
  static const grey6B6 = Color(0xFFB6B6B6);

  /// Linear Gradient ...
  static const LinearGradient linearGradientFBTT = LinearGradient(
    colors: [
      AppColors.green014,
      AppColors.green5B9,
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  static const LinearGradient linearGradientFLTR = LinearGradient(
    colors: [
      AppColors.green5B9,
      AppColors.greyF67,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
