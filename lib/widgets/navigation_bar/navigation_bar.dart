
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_bar_desktop.dart';
import 'navigation_bar_mobile.dart';

class NavigationBar extends StatelessWidget {
  final Function(String clickTitle) clickCallback;
  const NavigationBar(this.clickCallback, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      desktop: NavigationBarDesktop(clickCallback),
    );
  }
}
