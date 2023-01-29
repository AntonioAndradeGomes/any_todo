import 'package:any_todo/core/theme/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: AppColors.customSwatchColor,
  primaryColor: AppColors.primaryColor,
  useMaterial3: true,
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: AppColors.customSwatchColor,
  primaryColor: AppColors.primaryColor,
  useMaterial3: true,
);
