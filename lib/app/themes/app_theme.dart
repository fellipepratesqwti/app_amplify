import 'package:flutter/material.dart';
import 'app_colors.dart';

final ThemeData appThemeData = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  primaryColor: AppColors.primary,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: AppColors.focusedBorder,
    secondary: AppColors.primary,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      color: Colors.black87,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.focusedBorder,
      ),
    ),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: AppColors.primary, //thereby
  ),
);
