import 'package:flutter/material.dart';
import 'package:watch_store/screens/sign_in_screen.dart';
import 'package:watch_store/screens/sign_up_screen.dart';
import 'package:watch_store/screens/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SignInScreen());
  }
}
