
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: Container(
        child: RotatedBox(
          quarterTurns: 1,
          child: _BottomTabs(
            selectedTab: 0,
            onTap: (index){},
          ),
        ),
      ),
    );
  }
}

const tabTitles = ["TAB1", "TAB2", "TAB3"];

class _BottomTabs extends StatelessWidget {
  _BottomTabs({
    @required this.selectedTab,
    @required this.onTap,
  });

  final int selectedTab;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      backgroundColor: Colors.black54,
      inactiveColor: Colors.white54,
      activeColor: Colors.white,
      iconSize: 24.0,
      currentIndex: selectedTab,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          title: Text(tabTitles[0]),
          icon: const Icon(Icons.local_movies),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        BottomNavigationBarItem(
          title: Text(tabTitles[1]),
          icon: const Icon(Icons.search),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        BottomNavigationBarItem(
          title: Text(tabTitles[2]),
          icon: const Icon(Icons.store_mall_directory),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}