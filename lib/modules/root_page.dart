import 'package:flutter/material.dart';
import 'package:shopping_mall/global_keys.dart';
import 'package:shopping_mall/modules/home_page.dart';
import 'package:shopping_mall/modules/mine_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: GlobalKeys.rootAppKey,
        body: IndexedStack(
          index: _selectedPageIndex,
          children: const [HomePage(title: 'Shopping Mall Home Page'), MinePage()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          key: GlobalKeys.rootBottomNavigationBarKey,
          items: RootPageType.values.map((e) => BottomNavigationBarItem(icon: e.icon, label: e.title)).toList(),
          type: BottomNavigationBarType.fixed,
          fixedColor: const Color(0xFFFC6D26),
          currentIndex: _selectedPageIndex,
          onTap: (index) {
            setState(() {
              _selectedPageIndex = index;
            });
          },
        ));
  }
}

enum RootPageType {
  home("Home", Icon(Icons.home)),
  mine("Mine", Icon(Icons.person));

  final String title;
  final Icon icon;

  const RootPageType(this.title, this.icon);
}
