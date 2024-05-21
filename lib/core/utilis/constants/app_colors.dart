import 'package:flutter/material.dart';

abstract class AppColors {
  /// App Colors ...
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const springRain = Color(0xFFA3C5B0);
  static const camarone = Color(0xFF035014);
  static const summerGreen = Color(0xFF97BFA0);
  static const celadon = Color(0xFFB6E5B9);
  static const christi = Color(0xFF74A71A);
  static const limeade = Color(0xFF567F05);
  static const aluminium = Color(0xFFAEB3BE);
  static const forstGreen = Color(0xFF25A340);
  static const gladeGreen = Color(0xFF657F67);
  static const nobel = Color(0xFFB6B6B6);

  /// Linear Gradient Colors...
  static const LinearGradient linearGradientFBTT = LinearGradient(
    colors: [
      AppColors.camarone,
      AppColors.celadon,
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  static const LinearGradient linearGradientFLTR = LinearGradient(
    colors: [
      AppColors.celadon,
      AppColors.gladeGreen,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
