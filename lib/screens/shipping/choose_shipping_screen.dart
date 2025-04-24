import 'package:badminton_accessories_shop/screens/checkout/checkout_screen.dart';
import 'package:flutter/material.dart';

class ChooseShippingScreen extends StatefulWidget {
  static const String path = 'choose_shipping';
  static const String location = '${CheckoutScreen.location}/choose_shipping';

  const ChooseShippingScreen({super.key});

  @override
  State<ChooseShippingScreen> createState() => _ChooseShippingScreenState();
}

class _ChooseShippingScreenState extends State<ChooseShippingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
