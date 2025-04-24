import 'package:badminton_accessories_shop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  static const String path = 'product_detail';
  static const String location = '${HomeScreen.location}/product_detail';

  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
