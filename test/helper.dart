import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_mall/main.dart';

import 'test_binding_setter.dart';

Future<void> launchAppForTest(WidgetTester tester) async {
  await setUpMobileBinding(tester);
  await tester.pumpWidget(const ShoppingMallApp());
  await tester.pumpAndSettle(const Duration(seconds: 1));
  await tester.ensureVisible(find.byType(BottomNavigationBar));
}
