import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReservationItemDesktop extends StatelessWidget {
  final String text, time, name;

  const ReservationItemDesktop(this.name, this.time, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      height: 60,
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 20,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5)),
              ),
            ),
          ),
          Expanded(
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        topRight: Radius.circular(5)),
                    border: Border.all(color: Colors.grey, width: 1.0)),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Row(
                        children: <Widget>[
                          Text(
                            name,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          SizedBox(width: 10),
                          Text(
                            time,
                            style: TextStyle(color: Colors.amber, fontSize: 18),
                          ),
                          SizedBox(width: 10),
                          Text(
                            text,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      )),
                    )),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.orange,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
