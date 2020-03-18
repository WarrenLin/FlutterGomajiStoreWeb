
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  final double width;

  const SearchView({Key key, this.width = 500}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Container(
        height: 50,
        width: width,
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
            hintText: "請輸入姓名/前五碼序號/手機號碼",
            suffixIcon: Icon(Icons.search, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
