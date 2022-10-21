import 'package:flutter/material.dart';

typedef OnChangeTab = void Function(int index);

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.currentTabIndex,
    required this.items,
    required this.onChangeTab,
  });

  final int currentTabIndex;
  final List<BottomNavigationBarItem> items;
  final OnChangeTab onChangeTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      currentIndex: currentTabIndex,
      onTap: onChangeTab,
    );
  }
}
