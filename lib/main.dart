import 'package:flutter/material.dart';
import 'package:shopping_mall/modules/home_page.dart';

void main() {
  runApp(const ShoppingMallApp());
}

class ShoppingMallApp extends StatelessWidget {
  const ShoppingMallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Mall',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Shopping Mall Home Page'),
    );
  }
}
