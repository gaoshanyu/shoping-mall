import 'package:flutter/material.dart';
import 'package:shopping_mall/modules/root_page.dart';

// coverage:ignore-start
void main() {
  runApp(const ShoppingMallApp());
}
// coverage:ignore-end

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
      home: const RootPage(),
    );
  }
}
