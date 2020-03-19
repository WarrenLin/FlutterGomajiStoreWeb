
import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/record_view/record_list_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RecordListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: RecordListDesktop(),
      mobile: Text("Mobile RecordListView"),
    );
  }
}
