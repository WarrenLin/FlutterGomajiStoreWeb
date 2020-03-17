import 'package:flutter/material.dart';

class CircleDayView extends StatelessWidget {
  final String title, day;
  final bool isToday;

  const CircleDayView(this.title, this.day, this.isToday);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        width: 80,
        height: 80,
        decoration: new BoxDecoration(
          color: isToday ? Colors.orangeAccent : Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: isToday ? Colors.deepOrangeAccent : Colors.grey, width: 1.0)
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(title, style: TextStyle(fontSize: 20, color: isToday ? Colors.deepOrange: Colors.black),),
            Text(day, style: TextStyle(fontSize: 20, color: isToday ? Colors.deepOrange: Colors.black)),
          ],
        ),
    );
  }
}
