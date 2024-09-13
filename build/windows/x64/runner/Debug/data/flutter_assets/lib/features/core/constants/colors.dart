import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFFE9E3D5);
  static const Color secondaryColorText = Color(0xFF0A7273);
  static const Color primaryColorText = Color(0xFF033043);
  static const Color secondaryBackground = Color(0xFFFDA521);
}

extension ColorsExtension on BuildContext {
  AppColors get colors => AppColors();
}
