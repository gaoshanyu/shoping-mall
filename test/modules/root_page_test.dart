import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_mall/global_keys.dart';
import 'package:shopping_mall/modules/modules.dart';

import '../helper.dart';

void main() {
  testWidgets('Should launch app with BottomNavigationBar', (WidgetTester tester) async {
    await launchAppForTest(tester);

    BottomNavigationBar navigationBar = GlobalKeys.rootBottomNavigationBarKey.currentWidget as BottomNavigationBar;
    expect(navigationBar.currentIndex, RootPageType.home.index);
    expect(find.byType(HomePage), findsOneWidget);
    expect(find.text('Shopping Mall Home Page'), findsOneWidget);

    await tester.tap(find.text(RootPageType.mine.title));
    await tester.pumpAndSettle(const Duration(seconds: 1));
    expect(find.byType(MinePage), findsOneWidget);
    expect(find.text('Mine Page Title'), findsOneWidget);
  });
}
