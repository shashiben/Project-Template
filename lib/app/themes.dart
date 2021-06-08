import 'package:flutter/material.dart';

import 'colors.dart';
import 'configs.dart';

final lightThemeData = (BuildContext context) => ThemeData(
    primaryTextTheme: TextTheme(
        headline6: TextStyle(
      color: LightColorPalette.textPrimaryColor,
    )),
    selectedRowColor: LightColorPalette.surfaceColor,
    fontFamily: FontConfigs.bodyFont,
    popupMenuTheme: PopupMenuThemeData(
        color: LightColorPalette.backgroundColor,
        textStyle: TextStyle(
            color: LightColorPalette.textPrimaryColor,
            fontSize: 14,
            fontFamily: FontConfigs.titleFont,
            fontWeight: FontWeight.w500)),
    primaryColor: LightColorPalette.primaryColor,
    primarySwatch: Colors.teal,
    errorColor: LightColorPalette.errorColor,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: LightColorPalette.surfaceColor,
      actionTextColor: LightColorPalette.textPrimaryColor,
    ),
    iconTheme: IconThemeData(color: LightColorPalette.primaryColor),
    textTheme: Theme.of(context).textTheme.apply(
        bodyColor: LightColorPalette.textPrimaryColor,
        fontFamily: FontConfigs.headlineFont),
    scaffoldBackgroundColor: LightColorPalette.backgroundColor);

final darkThemeData = (BuildContext context) => ThemeData(
    fontFamily: FontConfigs.bodyFont,
    primaryColor: DarkColorPalette.primaryColor,
    primarySwatch: Colors.teal,
    popupMenuTheme: PopupMenuThemeData(
        color: LightColorPalette.backgroundColor,
        textStyle: TextStyle(
            color: DarkColorPalette.textPrimaryColor,
            fontSize: 14,
            fontFamily: FontConfigs.titleFont,
            fontWeight: FontWeight.w500)),
    errorColor: DarkColorPalette.errorColor,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: DarkColorPalette.surfaceColor,
      actionTextColor: DarkColorPalette.textPrimaryColor,
    ),
    iconTheme: IconThemeData(color: DarkColorPalette.primaryColor),
    textTheme: Theme.of(context).textTheme.apply(
        bodyColor: DarkColorPalette.textPrimaryColor,
        fontFamily: FontConfigs.headlineFont),
    scaffoldBackgroundColor: DarkColorPalette.backgroundColor);
