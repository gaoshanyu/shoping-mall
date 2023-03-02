import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_mall/global_keys.dart';
import 'package:shopping_mall/main.dart';
import 'package:shopping_mall/modules/modules.dart';

import '../test_binding_setter.dart';

void main() {
  testWidgets('Should launch app and be able to navigate to Mine Page', (WidgetTester tester) async {
    await setUpMobileBinding(tester);
    await tester.pumpWidget(const ShoppingMallApp());
    await tester.pumpAndSettle(const Duration(seconds: 1));
    await tester.ensureVisible(find.byType(BottomNavigationBar));
    await tester.tap(find.text(RootPageType.mine.title));
    await tester.pumpAndSettle(const Duration(seconds: 1));

    BottomNavigationBar navigationBar = GlobalKeys.rootBottomNavigationBarKey.currentWidget as BottomNavigationBar;
    expect(navigationBar.currentIndex, RootPageType.mine.index);
    expect(find.byType(MinePage), findsOneWidget);
    expect(find.text('Mine Page Body'), findsOneWidget);
  });
}
