import 'package:badminton_accessories_shop/screens/checkout/checkout_screen.dart';
import 'package:flutter/material.dart';

class ChoosePaymentMethodScreen extends StatefulWidget {
  static const String path = 'choose_payment_method';
  static const String location =
      '${CheckoutScreen.location}/choose_payment_method';

  const ChoosePaymentMethodScreen({super.key});

  @override
  State<ChoosePaymentMethodScreen> createState() =>
      _ChoosePaymentMethodScreenState();
}

class _ChoosePaymentMethodScreenState extends State<ChoosePaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
