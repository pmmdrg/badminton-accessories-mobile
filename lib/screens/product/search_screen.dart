import 'package:badminton_accessories_shop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static const String path = 'search';
  static const String location = '${HomeScreen.location}/search';

  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
