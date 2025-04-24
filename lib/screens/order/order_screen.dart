import 'package:badminton_accessories_shop/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  static const String path = 'order';
  static const String location = '${ProfileScreen.location}/order';

  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
