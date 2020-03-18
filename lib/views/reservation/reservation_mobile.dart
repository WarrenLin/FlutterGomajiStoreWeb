
import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/search_filter/filter_view.dart';
import 'package:flutter_web_demo/widgets/search_filter/search_view.dart';

class ReservationMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
      child: Column(
        children: <Widget>[
          FilterView(width: MediaQuery.of(context).size.width,),
          SizedBox(height: 15,),
          SearchView(width: MediaQuery.of(context).size.width,),
        ],
      ),
    );
  }
}
