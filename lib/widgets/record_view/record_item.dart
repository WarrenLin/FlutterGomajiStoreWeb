import 'package:flutter/material.dart';

class RecordItem extends StatelessWidget {
  final double width, height;
  final Widget topIcon;
  final String number, status;

  const RecordItem(
      {Key key,
      this.width = 150,
      this.height = 150,
      this.topIcon,
      this.number = "3",
      this.status = "已預約"});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.orange, width: 2.0),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          topIcon == null ? Container():topIcon,
          Text(
            number,
            style: TextStyle(fontSize: 42, color: Colors.orange),
          ),
          Text(
            status,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
