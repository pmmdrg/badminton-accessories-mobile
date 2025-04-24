import 'package:badminton_accessories_shop/constants/app_icons.dart';
import 'package:badminton_accessories_shop/utils/extensions/build_context_extension.dart';
import 'package:badminton_accessories_shop/widgets/app_icon/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({super.key, this.avatarUrl, this.size});

  final String? avatarUrl;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 40.0,
      width: size ?? 40.0,
      padding: EdgeInsets.all(avatarUrl?.isNotEmpty == true ? 2.0 : 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size != null ? size! / 2 : 20.r),
        border: Border.all(color: context.secondary),
      ),
      child: ClipOval(
        child:
            avatarUrl != null
                ? Image.network(
                  avatarUrl!,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (_, __, ___) =>
                          AppIcon(svgIcon: AppIcons.getIcon(AppIcons.userIcon)),
                )
                : AppIcon(svgIcon: AppIcons.getIcon(AppIcons.userIcon)),
      ),
    );
  }
}
