import 'package:flutter/material.dart';

class FilterView extends StatefulWidget {
  @override
  _FilterViewState createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  String dropdownValue = '依條件搜尋';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.all(
            Radius.circular(1),
          )),
      child: DropdownButton<String>(
        hint: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 60.0, 0),
          child: Text(dropdownValue),
        ),
        elevation: 16,
        style: TextStyle(color: Colors.black),
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_drop_down),
        ),
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
    );
  }
}
