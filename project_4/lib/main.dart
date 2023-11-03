import 'package:flutter/material.dart';
import 'package:project_4/screens/HomePage/homepage_screen.dart';
import 'package:project_4/screens/ProductDetailsPage/product_details_screen.dart';
import 'package:project_4/screens/SearchPage/search_screen.dart';
import 'package:project_4/screens/start_screen.dart';

import 'screens/filter/filter_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailsScreen(),
    );
  }
}
