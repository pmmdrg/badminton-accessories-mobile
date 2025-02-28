import 'package:badminton_accessories_shop/widgets/app_text_controller/app_text_controller.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({super.key, this.appTextController});

  final AppTextController? appTextController;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}
