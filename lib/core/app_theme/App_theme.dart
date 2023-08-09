import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData customAppTheme = ThemeData(
  scaffoldBackgroundColor: AppTheme.white,
  fontFamily: "OpenSans",
  primaryColor: AppTheme.white,

  focusColor: AppTheme.chineseBlue,
  textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppTheme.chineseBlue,
      selectionColor: AppTheme.chineseBlue,
      selectionHandleColor: AppTheme.chineseBlue),

  inputDecorationTheme: InputDecorationTheme(
    hintStyle: const TextStyle(
      fontFamily: "OpenSans",
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    contentPadding: const EdgeInsets.only(top: 6, left: 12),
    fillColor: AppTheme.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppTheme.darkLIver,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
    focusColor: AppTheme.chineseBlue,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppTheme.chineseBlue,
      ),
    ),
  ),
  checkboxTheme: const CheckboxThemeData(
      checkColor: MaterialStatePropertyAll(AppTheme.white),
      shape: CircleBorder(),
      fillColor: MaterialStatePropertyAll(AppTheme.chineseBlue)),

  iconTheme: const IconThemeData(
    size: 24,
    color: AppTheme.grey,
  ),

  // canvasColor: Colors.transparent
);
