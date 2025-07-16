import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  AppColors._();

  static const primaryColor = Color(0xFF47c77d);
  static const primaryColorOpacity = Color(0xFFedf9f2);
  static const greyText = Color(0xFF808284);
  static const grayDarker = Color(0xFF2E333A);
  static const grayDark = Color(0xFF636D7C);
  static const borderColor = Color(0xFFE5E6E7);
  static const grayNormal = Color(0xFF8491A5);
  static const grayLight = Color(0xFFF3F4F6);
  static const red = Color(0xFFF55555);
  static const redLight = Color(0xFFFEEEEE);
  static const yellow = Color(0xFFFEB23A);
  static const yellowLight = Color(0xFFFFF7EB);

  static const primaryOpacity = Color.fromRGBO(1, 50, 131, 0.05);

  static const grayBackground = Color(0xFFF0F0F5);

  static const buttonTextColor = Color(0xff9FAEA4);
  static const fafafa = Color(0xffFAFAFA);
  static const greyHome = Color(0xff8E93A6);
  static const text333333 = Color(0xff333333);

  static const white = Colors.white;
  static const black = Colors.black;
  static const transparent = Colors.transparent;
  static const grey3 = Color(0xFF898E96);
  static const grey5 = Color(0xFF374957);
  static const grey2 = Color(0xFFCCCDCE);
  static const grey1 = Color(0xFFE7E9EC);
  static const gray = Color(0xffA6ADB9);
  static const c9FAEA4 = Color(0xff9FAEA4);
  static const cF0F0F5 = Color(0xffF0F0F5);
  static const c2C2D30 = Color(0xff2C2D30);

  static const cEEEE = Color(0xffEEEEEE);
  static const green = Color(0xff36D488);

  static const grey4 = Color(0xFF393F48);
  static const dividerColor = Color(0xFFD7D8DD);
  static const secondary = Color(0xFFF1F1F1);
  static const secondary2 = Color(0xFFF8F8FA);
  static const cff8989 = Color(0xFFFF8989);
  static const c964A4A = Color(0xFF964A4A);
}

final appThemeData = ThemeData(
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 0,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.primaryColor,
    primary: AppColors.primaryColor,
  ),
  tabBarTheme: TabBarThemeData(labelPadding: EdgeInsets.zero),

  datePickerTheme: DatePickerThemeData(
      rangeSelectionBackgroundColor: AppColors.primaryColor.withOpacity(0.5)),

  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: AppColors.primaryColor),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    centerTitle: true,
  ),

  textTheme: GoogleFonts.interTextTheme(),
  // const TextTheme(
  //   displayLarge: TextStyle(
  //       fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.black),
  //   displayMedium: TextStyle(
  //       fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.black),
  //   displaySmall: TextStyle(
  //       fontSize: 10, fontWeight: FontWeight.w500, color: AppColors.black),
  //   headlineMedium: TextStyle(
  //       fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.black),
  //   headlineLarge: TextStyle(
  //       fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.black),
  //   headlineSmall: TextStyle(
  //       fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),
  //   titleLarge: TextStyle(
  //       fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.black),
  //   titleMedium: TextStyle(
  //       fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.black),
  //   titleSmall: TextStyle(
  //       fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.black),
  //   bodyLarge: TextStyle(
  //       fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.black),
  //   bodyMedium: TextStyle(
  //       fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),
  //   bodySmall: TextStyle(
  //     fontSize: 12,
  //     fontWeight: FontWeight.w400,
  //     color: AppColors.black,
  //   ),
  // ),
  // fontFamily: 'SFPro',
  scaffoldBackgroundColor: Colors.white,

  cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.dark),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: Colors.red,
  primaryColor: AppColors.primaryColor,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
);
