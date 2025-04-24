import 'package:badminton_accessories_shop/constants/app_color.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Color get primary =>
      Theme.of(this).brightness == Brightness.light
          ? AppColor.white
          : AppColor.black;

  Color get secondary =>
      Theme.of(this).brightness == Brightness.light
          ? AppColor.black
          : AppColor.white;

  TextTheme get appTextTheme => Theme.of(this).textTheme;

  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;
}
