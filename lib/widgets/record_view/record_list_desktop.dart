import 'package:flutter/material.dart';

class RecordListDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 238, 238),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5))),
      child: Column(
        children: <Widget>[
          createTableTitle(),
          createRecordItem(true, "林曉明", "0923456789", "\$499", "1", "59402",
              "2020/3/2 10:30~11:30", "新定位", "memo"),
          createRecordItem(false, "李小華", "0999888777", "\$899", "1", "51402",
              "2020/3/2 10:30~11:30", "已取消", "全選"),
          createRecordItem(true, "王小美", "0976543212", "\$199", "2", "51482\n83456",
              "2020/3/4 11:30~12:30", "已取消", "No"),
          createRecordItem(false, "林小姐", "0923456777", "\$499", "4", "79402",
              "2020/3/2 10:30~11:30", "新定位", ""),
        ],
      ),
    );
  }

  Widget createTableTitle() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: 60,
              child: Text(
                "訂購人",
                style: TextStyle(fontSize: 18, color: Colors.black12),
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: 60,
              child: Text(
                "電話",
                style: TextStyle(fontSize: 18, color: Colors.black12),
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: 60,
              child: Text(
                "售價",
                style: TextStyle(fontSize: 18, color: Colors.black12),
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: 60,
              child: Text(
                "數量",
                style: TextStyle(fontSize: 18, color: Colors.black12),
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: 60,
              child: Text(
                "兌換序號",
                style: TextStyle(fontSize: 18, color: Colors.black12),
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: 60,
              child: Text(
                "預定時間",
                style: TextStyle(fontSize: 18, color: Colors.black12),
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: 60,
              child: Text(
                "狀態",
                style: TextStyle(fontSize: 18, color: Colors.black12),
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: 60,
              child: Text(
                "備註",
                style: TextStyle(fontSize: 18, color: Colors.black12),
              )),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: 60,
              child: Text(
                "更多",
                style: TextStyle(fontSize: 18, color: Colors.black12),
              )),
        ),
      ],
    );
  }

  Widget createRecordItem(bool isOdd, String name, String phone, String price,
      String num, String ticket, String time, String status, String memo) {
    return Container(
      color: isOdd
          ? Color.fromARGB(255, 254, 250, 245)
          : Color.fromARGB(255, 255, 255, 255),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text(
                  name,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text(
                  phone,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text(
                  price,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text(
                  num,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text(
                  ticket,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text(
                  time,
                  style: TextStyle(fontSize: 18, color: Colors.orange),
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 80,
                child: getStatusText(status)),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Text(
                  memo,
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 80,
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                )),
          ),
        ],
      ),
    );
  }

  Widget getStatusText(String status) {
    if (status == "已取消") {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                status,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Text(
            "2020/2/28 19:57",
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ],
      );
    } else {
      return Container(
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            status,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      );
    }
  }
}
