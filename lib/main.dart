import 'package:flutter/material.dart';
import 'package:project_4/HomePage/homepage_screen.dart';
import 'package:project_4/NavigationBar/navigation_bar_widget.dart';
import 'package:project_4/ProductDetailsPage/product_details_screen.dart';
import 'package:project_4/SearchPage/search_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: 'jjjj',
      ),
    );
  }
}
