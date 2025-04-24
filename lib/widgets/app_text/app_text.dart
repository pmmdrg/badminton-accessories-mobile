import 'package:badminton_accessories_shop/utils/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.maxLines,
    this.overflow,
    this.style,
    this.textAlign,
  });

  final String text;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      maxLines: maxLines,
      overflow: overflow,
      style:
          style ??
          context.appTextTheme.bodyMedium?.copyWith(color: context.secondary),
    );
  }
}
