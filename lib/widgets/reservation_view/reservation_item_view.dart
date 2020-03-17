import 'package:flutter/material.dart';
import 'package:flutter_web_demo/widgets/reservation_view/reservation_item_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ReservationItemView extends StatelessWidget {
  final String text, time, name;
  const ReservationItemView(this.name, this.time, this.text);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ReservationItemDesktop(name, time, text),
      mobile: Text("mobile"),
    );
  }
}
