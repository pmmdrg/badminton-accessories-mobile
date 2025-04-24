import 'package:badminton_accessories_shop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  static const String path = 'category';
  static const String location = '${HomeScreen.location}/category';

  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
