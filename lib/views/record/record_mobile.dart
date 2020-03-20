import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/record_view/record_item.dart';
import 'package:flutter_web_demo/widgets/record_view/record_list_view.dart';
import 'package:flutter_web_demo/widgets/search_filter/filter_view.dart';
import 'package:flutter_web_demo/widgets/search_filter/search_view.dart';

class RecordMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          MediaQuery.of(context).size.height - AppBar().preferredSize.height,
      color: Color.fromARGB(255, 247, 247, 249),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Column(
                  children: <Widget>[
                    FilterView(
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SearchView(width: MediaQuery.of(context).size.width),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(1),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(1),
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                ),
                                hintText: "2020/3/1 ~ 2020/3/5",
                                suffixIcon:
                                    Icon(Icons.search, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              child: Text(
                                "查詢",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            onPressed: () {},
                            color: Colors.orange,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: RecordItem(
                      width: 100,
                      height: 100,
                      number: "68",
                      status: "已預約",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RecordItem(
                      width: 100,
                      height: 100,
                      number: "37",
                      status: "已使用",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RecordItem(
                      width: 100,
                      height: 100,
                      number: "25",
                      status: "未使用",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: RecordItem(
                      width: 100,
                      height: 100,
                      number: "8",
                      status: "已取消",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "總共3筆",
                  style: TextStyle(fontSize: 18, color: Colors.lightBlue),
                ),
              ),
            ),
            RecordListView()
          ],
        ),
      ),
    );
  }
}
