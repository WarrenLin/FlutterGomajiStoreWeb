import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/centered_view/circle_day_view.dart';

class CalendarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                color: Colors.orange,
              ),
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "2020/3月",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              )),
          Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                border: Border.all(color: Colors.grey, width: 1.0)),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CircleDayView("今天", "2", true),
                CircleDayView("二", "3", false),
                CircleDayView("三", "4", false),
                CircleDayView("四", "5", false),
                CircleDayView("五", "6", false),
                CircleDayView("六", "7", false),
                CircleDayView("日", "8", false),
                CircleDayView("一", "9", false),
                CircleDayView("二", "10", false),
                CircleDayView("三", "11", false),
                CircleDayView("四", "12", false),
              ],
            ),
          )
        ],
      ),
    );
  }
}
