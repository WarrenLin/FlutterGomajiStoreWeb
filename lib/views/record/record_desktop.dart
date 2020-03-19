import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/record_view/record_item.dart';
import 'package:flutter_web_demo/widgets/record_view/record_list_view.dart';
import 'package:flutter_web_demo/widgets/search_filter/record_search_desktop.dart';

class RecordDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        color: Color.fromARGB(255, 247, 247, 249),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "訂單記錄",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          RecordItem(
                              number: "68",
                              status: "已預約",
                              topIcon: Icon(
                                Icons.access_time,
                                size: 45,
                                color: Colors.orange,
                              )),
                          SizedBox(
                            width: 30,
                          ),
                          RecordItem(
                              number: "37",
                              status: "已使用",
                              topIcon: Icon(
                                Icons.playlist_add_check,
                                size: 45,
                                color: Colors.orange,
                              )),
                          SizedBox(
                            width: 30,
                          ),
                          RecordItem(
                              number: "25",
                              status: "未使用",
                              topIcon: Icon(
                                Icons.timer,
                                size: 45,
                                color: Colors.orange,
                              )),
                          SizedBox(
                            width: 30,
                          ),
                          RecordItem(
                              number: "8",
                              status: "已取消",
                              topIcon: Icon(
                                Icons.alarm_off,
                                size: 45,
                                color: Colors.orange,
                              )),
                          SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  RecordSearchDesktop(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "總共3筆",
                        style: TextStyle(fontSize: 18, color: Colors.lightBlue),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        child: Text(
                          "匯出Excel",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                        color: Colors.orange,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RecordListView()
                ],
              ),
            ),
          ),
        ));
  }
}
