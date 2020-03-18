import 'package:flutter/material.dart';

class FilterView extends StatefulWidget {
  final double width;

  const FilterView({Key key, this.width = 200}) : super(key: key);

  @override
  _FilterViewState createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  String dropdownValue = '依條件搜尋';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.all(
            Radius.circular(1),
          )),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: DropdownButton<String>(
              hint: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(dropdownValue, style: TextStyle(color: Colors.grey, fontSize: 18),),
              ),
              elevation: 16,
              style: TextStyle(color: Colors.black),
              icon: Container(),
              underline: Container(),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Icon(Icons.arrow_drop_down),
                )),
          )
        ],
      ),
    );
  }
}
