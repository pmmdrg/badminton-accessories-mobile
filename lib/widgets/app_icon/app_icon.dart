import 'package:badminton_accessories_shop/utils/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    this.icon,
    this.svgIcon,
    this.size = 28,
    this.color,
  }) : assert(icon != null || svgIcon != null, 'Must provide icon or svgIcon');

  final IconData? icon;
  final String? svgIcon;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return svgIcon != null
        ? SvgPicture.asset(
          svgIcon!,
          width: size,
          height: size,
          colorFilter: ColorFilter.mode(
            color ?? context.secondary,
            BlendMode.srcIn,
          ),
        )
        : Icon(icon, size: size, color: color ?? context.secondary);
  }
}
