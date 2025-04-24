import 'package:badminton_accessories_shop/constants/app_icons.dart';
import 'package:badminton_accessories_shop/utils/extensions/build_context_extension.dart';
import 'package:badminton_accessories_shop/widgets/app_icon/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
    this.size,
    this.color,
  });

  final bool value;
  final ValueChanged<bool?>? onChanged;
  final double? size;
  final Color? color;

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onChanged != null) {
          widget.onChanged!(widget.value);
        }
      },
      child: Container(
        height: widget.size ?? 24.0,
        width: widget.size ?? 24.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: context.secondary),
        ),
        child:
            widget.value
                ? AppIcon(svgIcon: AppIcons.getIcon(AppIcons.checkIcon))
                : null,
      ),
    );
  }
}
