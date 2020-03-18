import 'package:flutter/material.dart';
import 'package:flutter_web_demo/views/reservation/reservation_desktop.dart';
import 'package:flutter_web_demo/views/reservation/reservation_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ReservationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ReservationDesktop(),
      mobile: ReservationMobile(),
    );
  }
}
