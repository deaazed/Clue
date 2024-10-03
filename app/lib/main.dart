// lib/main.dart
import 'package:flutter/material.dart';
import 'home_page.dart';  // Import the home page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),  // Set HomePage as the initial screen
    );
  }
}