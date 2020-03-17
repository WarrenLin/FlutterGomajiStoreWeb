import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final bool isDeskTop;

  const NavBarItem(this.title, this.isSelected, this.isDeskTop);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 18,
          color: isDeskTop ? Colors.white : Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
    );
  }
}
