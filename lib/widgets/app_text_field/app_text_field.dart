import 'package:badminton_accessories_shop/utils/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.onChanged,
    this.controller,
    this.style,
    this.hintText,
    this.borderWidth = 1.0,
    this.borderColor,
    this.focusedBorderColor,
    this.borderRadius,
    this.contentPadding,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.maxLines,
    this.minLines,
    this.isDense,
  });

  final void Function(String value)? onChanged;
  final TextStyle? style;
  final TextEditingController? controller;
  final String? hintText;
  final double borderWidth;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final int? maxLines;
  final int? minLines;
  final bool? isDense;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText ?? false,
      style: widget.style ?? context.appTextTheme.bodyMedium,
      controller: widget.controller,
      maxLines: widget.obscureText == true ? 1 : widget.maxLines,
      minLines: widget.minLines,
      decoration: InputDecoration(
        isDense: widget.isDense,
        prefixIcon: widget.prefixIcon,
        prefixIconColor: context.secondary,
        suffixIcon: widget.suffixIcon,
        suffixIconColor: context.secondary,
        hintText: widget.hintText,
        contentPadding: widget.contentPadding,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? context.secondary,
            width: widget.borderWidth,
          ),
          borderRadius: widget.borderRadius?.r ?? BorderRadius.circular(12.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? context.secondary,
            width: widget.borderWidth + 1.0,
          ),
          borderRadius: widget.borderRadius?.r ?? BorderRadius.circular(12.r),
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}
