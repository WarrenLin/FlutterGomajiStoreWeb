import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/search_filter/filter_view.dart';
import 'package:flutter_web_demo/widgets/search_filter/search_view.dart';

class RecordSearchDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FilterView(),
              SizedBox(
                width: 20,
              ),
              SearchView()
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "自",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 150,
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
                    hintText: "2020/3/1",
                    suffixIcon: Icon(Icons.calendar_today, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  "~",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                height: 50,
                width: 150,
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
                    hintText: "2020/3/2",
                    suffixIcon: Icon(Icons.calendar_today, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              RaisedButton(child: Text("查詢", style: TextStyle(color: Colors.white),), onPressed: (){}, color: Colors.orange,)
            ],
          )
        ],
      ),
    );
  }
}
