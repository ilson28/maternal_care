import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static const Color primary = Color(0xFFC4007C);
  static const Color secondary = Color(0xFFFFB8E5);
  static const BoxDecoration backgroundApp = BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xffF8C9C9), Color(0xffffffff)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter));
}
