import 'package:badminton_accessories_shop/constants/app_color.dart';
import 'package:badminton_accessories_shop/screens/auth/login_screen.dart';
import 'package:badminton_accessories_shop/utils/extensions/build_context_extension.dart';
import 'package:badminton_accessories_shop/widgets/app_button/app_button.dart';
import 'package:badminton_accessories_shop/widgets/app_check_box/app_check_box.dart';
import 'package:badminton_accessories_shop/widgets/app_text/app_text.dart';
import 'package:badminton_accessories_shop/widgets/app_text_field/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  static const String path = '/register';
  static const String location = '/register';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _agreedToTerms = false;

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
              text: 'Đăng Ký',
              style: context.appTextTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            AppText(
              text: 'Vui lòng điền các thông tin bên dưới để đăng ký tài khoản',
              style: context.appTextTheme.bodyMedium,
            ),
            SizedBox(height: 30.h),
            AppTextField(hintText: 'Email'),
            AppTextField(hintText: 'Mật khẩu'),
            AppTextField(hintText: 'Xác nhận mật khẩu'),
            Row(
              children: [
                AppCheckBox(
                  value: _agreedToTerms,
                  onChanged: (value) {
                    setState(() {
                      _agreedToTerms = !_agreedToTerms;
                    });
                  },
                ),
                SizedBox(width: 10.0),
                AppText(text: 'Tôi đồng ý với'),
                AppButton(
                  width: 170.w,
                  backgroundColor: AppColor.transparent,
                  borderColor: AppColor.transparent,
                  child: AppText(
                    text: 'Điều khoản & Chính sách',
                    style: context.appTextTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            AppButton(
              borderRadius: BorderRadius.circular(20.r),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: AppText(
                  text: 'Đăng Ký',
                  textAlign: TextAlign.end,
                  style: context.appTextTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.primary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                AppText(text: 'Đã có tài khoản?'),
                AppButton(
                  backgroundColor: AppColor.transparent,
                  borderColor: AppColor.transparent,
                  onPressed: () => context.go(LoginScreen.location),
                  child: AppText(
                    text: 'Đăng nhập',
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
