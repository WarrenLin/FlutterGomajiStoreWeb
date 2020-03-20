import 'package:flutter/material.dart';

class RecordListMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 238, 238),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5))),
      child: Column(
        children: <Widget>[
          createRecordItem("林曉明", "0923456789", "\$499", "1", "59402",
              "2020/3/2 10:30~11:30", "新定位", "memo"),
          createRecordItem("李小華", "0999888777", "\$899", "1", "51402",
              "2020/3/2 10:30~11:30", "已取消", "全選"),
          createRecordItem("王小美", "0976543212", "\$199", "2", "51482\n83456",
              "2020/3/4 11:30~12:30", "已取消", "No"),
          createRecordItem("林小姐", "0923456777", "\$499", "4", "79402",
              "2020/3/2 10:30~11:30", "新定位", ""),
          createRecordItem("林小姐", "0923456777", "\$499", "4", "79402",
              "2020/3/2 10:30~11:30", "新定位", ""),
        ],
      ),
    );
  }

  Widget createRecordItem(String name, String phone, String price, String num,
      String ticket, String time, String status, String memo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: Colors.grey, width: 1.0)),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5)),
                  ),
                ),
              ),
              Expanded(
                flex: 30,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        phone,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        price + "   數量:" + num,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "序號:" + ticket,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "預定時間:",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                          Text(
                            time,
                            style:
                                TextStyle(fontSize: 16, color: Colors.orange),
                          )
                        ],
                      ),
                      getStatusText(status),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        memo,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget getStatusText(String status) {
    if (status == "已取消") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                status,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "2020/2/28 19:57",
            style: TextStyle(color: Colors.blue, fontSize: 14),
          ),
        ],
      );
    } else {
      return Container(
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            status,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      );
    }
  }
}
