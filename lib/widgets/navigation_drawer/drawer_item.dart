import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/navigation_bar/navbar_item.dart';

class DrawerItem extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  final bool isDeskTop;

  const DrawerItem(this.title, this.icon, this.onTap, this.isDeskTop);

  @override
  State<StatefulWidget> createState() {
    return _DrawerItemState();
  }
}

class _DrawerItemState extends State<DrawerItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.isDeskTop ? Colors.orange: Colors.white,
      child: InkWell(
        onTap: () {
          widget.onTap();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 40, top: 30),
          child: Row(
            children: <Widget>[
              Icon(
                widget.icon,
                color: widget.isDeskTop ? Colors.white: Colors.black,
              ),
              SizedBox(
                width: 30,
              ),
              NavBarItem(widget.title, isSelected, widget.isDeskTop)
            ],
          ),
        ),
      ),
    );
  }
}
