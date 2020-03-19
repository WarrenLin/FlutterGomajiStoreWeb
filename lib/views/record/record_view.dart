
import 'package:flutter/material.dart';
import 'package:flutter_web_demo/views/record/record_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RecordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: RecordDesktop(),
      mobile: Text("Mobile"),
    );
  }
}
