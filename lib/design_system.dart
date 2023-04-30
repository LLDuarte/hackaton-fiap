import 'package:flutter/material.dart';

class DesignSystem {
  static Color lightGray = const Color(0xFFF2F4F8);
  static Color white = const Color(0xFFFDFDFD);
  static Color blue = const Color(0xFF0049FC);
  static Color green = const Color(0xFF00B383);
  static Color red = const Color(0xFFEA6B6B);
  static Color gray = const Color(0xFF69695D);

  static Color darkBlue = const Color(0xFF293558);
  static Color lightBlue = const Color(0xFF163592);
  static Color darkGreen = const Color(0xFF34D6A4);
  static Color black = const Color(0xFF0F0F0F);

  // Gradients

  static LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [DesignSystem.darkBlue, DesignSystem.lightBlue]
  );

  static LinearGradient greenGradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [DesignSystem.darkGreen, DesignSystem.green]
  );

  static LinearGradient yellowGradient = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xFFD2D634), Color(0xFFF8F03C)]
  );

  static LinearGradient redGradient = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xFFD63434), Color(0xFFF83C69)]
  );

  static LinearGradient purpleGradient = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xFF30228F), Color(0xFF4A34D6)]
  );
}


