import 'package:badminton_accessories_shop/constants/app_color.dart';
import 'package:badminton_accessories_shop/utils/extensions/build_context_extension.dart';
import 'package:badminton_accessories_shop/widgets/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppToast extends StatefulWidget {
  const AppToast({super.key, required this.message});

  final String message;

  @override
  State<AppToast> createState() => _AppToastState();
}

class _AppToastState extends State<AppToast> {
  double _opacity = 0;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      setState(() {
        _opacity = 1;
      });
    });

    Future.delayed(
      const Duration(seconds: 3) - const Duration(milliseconds: 500),
      () {
        setState(() {
          _opacity = 0;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 80.h),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: IgnorePointer(
          child: AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(milliseconds: 500),
            child: Material(
              color: AppColor.transparent,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.h),
                decoration: BoxDecoration(
                  color: context.secondary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: AppText(
                  text: widget.message,
                  style: context.appTextTheme.labelSmall?.copyWith(
                    color: context.primary,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
