import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReservationItemMobile extends StatelessWidget {
  final String text, time, name;

  const ReservationItemMobile(this.name, this.time, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      height: 160,
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 160,
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
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        topRight: Radius.circular(5)),
                    border: Border.all(color: Colors.white, width: 1.0)),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                name,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              SizedBox(width: 10),
                              Text(
                                time,
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 18),
                              ),
                              SizedBox(width: 10),
                              Text(
                                text,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ],
                          )),
                    )),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
