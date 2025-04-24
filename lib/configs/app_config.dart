import 'package:badminton_accessories_shop/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConfig {
  static const String baseApiUrl = String.fromEnvironment('API_URL');
}

class AppTheme {
  static TextTheme appTextTheme = TextTheme(
    displayLarge: TextStyle(fontWeight: FontWeight.w700, fontSize: 57.sp),
    displayMedium: TextStyle(fontWeight: FontWeight.w700, fontSize: 45.sp),
    displaySmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 36.sp),
    headlineLarge: TextStyle(fontWeight: FontWeight.w700, fontSize: 32.sp),
    headlineMedium: TextStyle(fontWeight: FontWeight.w700, fontSize: 28.sp),
    headlineSmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 24.sp),
    titleLarge: TextStyle(fontWeight: FontWeight.w700, fontSize: 22.sp),
    titleMedium: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
    titleSmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
    bodyLarge: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
    bodyMedium: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
    bodySmall: TextStyle(fontWeight: FontWeight.w300, fontSize: 12.sp),
    labelLarge: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp),
    labelMedium: TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
    labelSmall: TextStyle(fontWeight: FontWeight.w300, fontSize: 11.sp),
  );

  static InputDecorationTheme appInputDecorationTheme = InputDecorationTheme(
    hintStyle: appTextTheme.bodyMedium?.copyWith(color: AppColor.grey),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1.0),
      borderRadius: BorderRadius.circular(12.r),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2.0),
      borderRadius: BorderRadius.circular(12.r),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 1.0, color: AppColor.red),
      borderRadius: BorderRadius.circular(12.r),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.white,
    inputDecorationTheme: appInputDecorationTheme,
    useMaterial3: true,
    textTheme: appTextTheme,
    fontFamily: 'Inter',
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.black,
    inputDecorationTheme: appInputDecorationTheme,
    useMaterial3: true,
    textTheme: appTextTheme,
    fontFamily: 'Inter',
  );
}
