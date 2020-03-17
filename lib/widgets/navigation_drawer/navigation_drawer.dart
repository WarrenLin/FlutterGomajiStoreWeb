import 'package:flutter/material.dart';
import 'drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  final Function(String clickTitle) clickCallback;
  const NavigationDrawer(this.clickCallback, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              color: Colors.orange,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/menu_icon.png",
                          width: 65, height: 65),
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Text("佐登妮絲國際美容連鎖(淡水店)",
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                        textAlign: TextAlign.left),
                    flex: 7,
                  ),
                ],
              )),
          DrawerItem('預約管理', Icons.account_balance_wallet, (){clickCallback("預約管理");}, false),
          DrawerItem('訂單記錄', Icons.assignment, (){clickCallback("訂單記錄");}, false),
          DrawerItem('通知', Icons.notifications, (){clickCallback("通知");}, false),
          DrawerItem('空位設定', Icons.settings, (){clickCallback("空位設定");}, false),
          DrawerItem('手動新增定位', Icons.edit, (){clickCallback("手動新增定位");}, false),
        ],
      ),
    );
  }
}
