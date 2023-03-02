import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_mall/global_keys.dart';
import 'package:shopping_mall/modules/modules.dart';

import '../helper.dart';

void main() {
  testWidgets('Should launch app and display Home Page', (WidgetTester tester) async {
    await launchAppForTest(tester);

    BottomNavigationBar navigationBar = GlobalKeys.rootBottomNavigationBarKey.currentWidget as BottomNavigationBar;
    expect(navigationBar.currentIndex, RootPageType.home.index);
    expect(find.byType(HomePage), findsOneWidget);
    expect(find.text('Shopping Mall Home Page'), findsOneWidget);

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
