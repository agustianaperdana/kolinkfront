import 'package:flutter/material.dart';
import 'package:test_project/Screens/register_screen.dart';
import 'package:test_project/Screens/Product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//test
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),

    );
  }
}
