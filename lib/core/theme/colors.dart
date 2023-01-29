import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(89, 13, 252, .1),
  100: const Color.fromRGBO(89, 13, 252, .2),
  200: const Color.fromRGBO(89, 13, 252, .3),
  300: const Color.fromRGBO(89, 13, 252, .4),
  400: const Color.fromRGBO(89, 13, 252, .5),
  500: const Color.fromRGBO(89, 13, 252, .6),
  600: const Color.fromRGBO(89, 13, 252, .7),
  700: const Color.fromRGBO(89, 13, 252, .8),
  800: const Color.fromRGBO(89, 13, 252, .9),
  900: const Color.fromRGBO(89, 13, 252, 1),
};

abstract class AppColors {
  static Color primaryColor = const Color.fromRGBO(89, 13, 252, 1);
  static Color myDayColor = const Color(0xFFEEA20E);
  static Color importantColor = const Color(0xFFFFD706);
  static Color greenPollColor = const Color(0xFF02F9A0);
  static Color pinkColor = const Color(0xFFFF00FF);
  static Color slateBlueColor = const Color(0xFF6A5ACD);
  static Color blueColor = const Color(0xFF0000FF);
  static Color greenColor = const Color(0xFF006400);
  static Color orangeColor = const Color(0xFFFF4500);
  static Color darkCyan = const Color(0xFF008B8B);
  static Color darkOrange = const Color(0xFFFF8C00);

  static List<Color> listTasksColor = [
    greenPollColor,
    pinkColor,
    slateBlueColor,
    blueColor,
    greenColor,
    orangeColor,
    darkCyan,
    darkOrange,
  ];

  static MaterialColor customSwatchColor = MaterialColor(
    0xFF590DFC,
    _swatchOpacity,
  );
}
