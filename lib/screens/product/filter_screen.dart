import 'package:badminton_accessories_shop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const String path = 'filter';
  static const String location = '${HomeScreen.location}/filter';

  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
