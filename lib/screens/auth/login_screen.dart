import 'package:badminton_accessories_shop/constants/app_color.dart';
import 'package:badminton_accessories_shop/constants/app_icons.dart';
import 'package:badminton_accessories_shop/screens/auth/register_screen.dart';
import 'package:badminton_accessories_shop/utils/extensions/build_context_extension.dart';
import 'package:badminton_accessories_shop/widgets/app_button/app_button.dart';
import 'package:badminton_accessories_shop/widgets/app_icon/app_icon.dart';
import 'package:badminton_accessories_shop/widgets/app_text/app_text.dart';
import 'package:badminton_accessories_shop/widgets/app_text_field/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  static const String path = '/login';
  static const String location = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.h,
          children: [
            AppText(
              text: 'Đăng Nhập',
              style: context.appTextTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            AppText(
              text:
                  'Chào mừng bạn trở lại, đăng nhập để tiếp tục sử dụng ứng dụng',
              style: context.appTextTheme.bodyMedium,
            ),
            SizedBox(height: 30.h),
            AppTextField(hintText: 'Email'),
            AppTextField(hintText: 'Mật khẩu'),
            Align(
              alignment: Alignment.centerRight,
              child: AppButton(
                width: 120.w,
                backgroundColor: AppColor.transparent,
                borderColor: AppColor.transparent,
                child: AppText(
                  text: 'Quên mật khẩu?',
                  style: context.appTextTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            AppButton(
              borderRadius: BorderRadius.circular(20.r),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: AppText(
                  text: 'Đăng Nhập',
                  textAlign: TextAlign.end,
                  style: context.appTextTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.primary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            AppText(text: 'Hoặc đăng nhập bằng'),
            SizedBox(height: 20.h),
            AppButton(
              borderRadius: BorderRadius.circular(50.r),
              backgroundColor: AppColor.transparent,
              height: 60.0,
              width: 60.0,
              child: AppIcon(svgIcon: AppIcons.getIcon(AppIcons.googleIcon)),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                AppText(text: 'Chưa có tài khoản?'),
                AppButton(
                  backgroundColor: AppColor.transparent,
                  borderColor: AppColor.transparent,
                  onPressed: () => context.push(RegisterScreen.location),
                  child: AppText(
                    text: 'Đăng ký',
                    style: context.appTextTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
