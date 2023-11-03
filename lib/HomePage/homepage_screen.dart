import 'package:flutter/material.dart';
import 'package:project_4/HomePage/components/category_component.dart';
import 'package:project_4/HomePage/components/product_widget.dart';

import 'components/app_bar_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBarWidget(),
      body: const Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello",
              style: TextStyle(
                  fontSize: 28,
                  color: Color(0xff294475),
                  fontFamily: 'DMSerifText'),
            ),
            Text(
              "Choose Your Top Brands",
              style: TextStyle(fontSize: 23, fontFamily: 'DMSerifText'),
            ),
            SizedBox(
              height: 20,
            ),
            CategoryWidget(),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductWidget(),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
