import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const kDarkBackgroundColor = Color(0xFF25313C);
const kDarkPrimaryColor = Color(0xFF25313C);
const kDarkAccentColor = Color(0xFF5C7080);
// const kDarkAccentColor = Color(0xFFD8E1E8);

final kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kDarkPrimaryColor,
  accentColor: kDarkAccentColor,
  backgroundColor: kDarkBackgroundColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

void setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: kDarkBackgroundColor,
    systemNavigationBarDividerColor: Colors.transparent,
  ));
}
