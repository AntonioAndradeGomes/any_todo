import 'package:any_todo/core/theme/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: AppColors.customSwatchColor,
  primaryColor: AppColors.primaryColor,
  useMaterial3: false,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: AppColors.customSwatchColor,
  primaryColor: AppColors.primaryColor,
  useMaterial3: false,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
);
