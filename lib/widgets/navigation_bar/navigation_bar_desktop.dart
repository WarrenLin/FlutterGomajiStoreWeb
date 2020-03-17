import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/navigation_drawer/drawer_item.dart';
import 'package:table_calendar/table_calendar.dart';

class NavigationBarDesktop extends StatefulWidget {
  final Function(String clickTitle) clickCallback;
  const NavigationBarDesktop(this.clickCallback, {Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NavigationBarDesktopState();
  }
}

class _NavigationBarDesktopState extends State<NavigationBarDesktop> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("GOMAJI 預約系統",
                style: TextStyle(fontSize: 20.0, color: Colors.white)),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              color: Color.fromARGB(244, 223, 130, 48),
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
          DrawerItem('預約管理', Icons.account_balance_wallet, (){widget.clickCallback("預約管理");}, true),
          DrawerItem('訂單記錄', Icons.assignment, (){widget.clickCallback("訂單記錄");}, true),
          DrawerItem('通知', Icons.notifications, (){widget.clickCallback("通知");}, true),
          DrawerItem('空位設定', Icons.settings, (){widget.clickCallback("空位設定");}, true),
          DrawerItem('手動新增定位', Icons.edit, (){widget.clickCallback("手動新增定位");}, true),
          SizedBox(
            height: 60,
          ),
          Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  child: TableCalendar(
                    headerStyle: HeaderStyle(centerHeaderTitle: true, formatButtonVisible: false),
                    calendarController: _calendarController,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
