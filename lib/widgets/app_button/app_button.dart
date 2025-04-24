import 'package:badminton_accessories_shop/constants/app_color.dart';
import 'package:badminton_accessories_shop/utils/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.child,
    this.onPressed,
    this.variant = AppButtonVariant.filled,
    this.backgroundColor,
    this.borderColor,
    this.height,
    this.width,
    this.borderRadius,
  }) : assert(
         !(backgroundColor != null && variant != AppButtonVariant.filled),
         'Only variant filled can use backgroundColor',
       );

  final Widget? child;
  final VoidCallback? onPressed;
  final AppButtonVariant? variant;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: height?.h,
      width: width?.w,
      decoration: BoxDecoration(
        color:
            variant == AppButtonVariant.filled
                ? backgroundColor ?? context.secondary
                : AppColor.transparent,
        border: Border.all(color: borderColor ?? context.secondary),
        borderRadius: borderRadius ?? BorderRadius.circular(5.r),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
          child: Center(child: child),
        ),
      ),
    );
  }
}

enum AppButtonVariant { filled, outlined }
