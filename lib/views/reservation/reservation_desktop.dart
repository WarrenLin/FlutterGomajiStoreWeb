import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/calendar/calendar_view.dart';
import 'package:flutter_web_demo/widgets/reservation_view/reservation_item_desktop.dart';
import 'package:flutter_web_demo/widgets/reservation_view/reservation_item_view.dart';
import 'package:flutter_web_demo/widgets/search_filter/filter_view.dart';
import 'package:flutter_web_demo/widgets/search_filter/search_view.dart';

class ReservationDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "預約管理",
                style: TextStyle(color: Colors.grey, fontSize: 18.0),
              ),
              SizedBox(width: 60),
              FilterView(),
              SizedBox(width: 10),
              SearchView()
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: CalendarView(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Text(
                    "2020/3/2",
                    style: TextStyle(color: Colors.redAccent, fontSize: 20),
                  ),
                ),
                Text(
                  "總共3筆預約",
                  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 18),
                ),
              ],
            ),
          ),
          ReservationItemView("林老師", "2020/3/2 10:30~11:00", "使用張數:1張 泰SPA 古法全身精油舒壓"),
          ReservationItemView("李小龍", "2020/3/2 10:30~11:00", "使用張數:2張 泰SPA 古法全身精油舒壓"),
          ReservationItemView("喇叭詹", "2020/3/2 10:30~11:00", "使用張數:3張 泰SPA 古法全身精油舒壓"),
        ],
      ),
    );
  }
}
