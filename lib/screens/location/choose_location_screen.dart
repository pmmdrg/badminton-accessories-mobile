import 'package:badminton_accessories_shop/screens/checkout/checkout_screen.dart';
import 'package:flutter/material.dart';

class ChooseLocationScreen extends StatefulWidget {
  static const String path = 'choose_location';
  static const String location = '${CheckoutScreen.location}/choose_location';

  const ChooseLocationScreen({super.key});

  @override
  State<ChooseLocationScreen> createState() => _ChooseLocationScreenState();
}

class _ChooseLocationScreenState extends State<ChooseLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
