import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/reservation_view/reservation_item_view.dart';
import 'package:flutter_web_demo/widgets/search_filter/filter_view.dart';
import 'package:flutter_web_demo/widgets/search_filter/search_view.dart';

class ReservationMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          MediaQuery.of(context).size.height - AppBar().preferredSize.height - 24,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: Column(
                  children: <Widget>[
                    FilterView(
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SearchView(
                      width: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "2020/3/2",
                      style: TextStyle(color: Colors.redAccent, fontSize: 20),
                    ),
                    Text(
                      "總共4筆預約",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                    ),
                    ReservationItemView(
                        "林老師", "2020/3/2 10:30~11:00", "使用張數:1張 泰SPA 古法全身精油舒壓"),
                    ReservationItemView(
                        "李小龍", "2020/3/2 10:30~11:00", "使用張數:2張 泰SPA 古法全身精油舒壓"),
                    ReservationItemView("喇叭詹", "2020/3/2 10:30~11:00",
                        "使用張數:3張 泰SPA 古法全身精油舒壓, 使用張數:3張 泰SPA 古法全身精油舒壓, 使用張數:3張 泰SPA 古法全身精油舒壓"),
                    ReservationItemView(
                        "林老師", "2020/3/2 10:30~11:00", "使用張數:1張 泰SPA 古法全身精油舒壓"),
                    ReservationItemView(
                        "林老師", "2020/3/2 10:30~11:00", "使用張數:1張 泰SPA 古法全身精油舒壓"),
                    ReservationItemView("喇叭詹", "2020/3/2 10:30~11:00",
                        "使用張數:3張 泰SPA 古法全身精油舒壓, 使用張數:3張 泰SPA 古法全身精油舒壓, 使用張數:3張 泰SPA 古法全身精油舒壓"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
