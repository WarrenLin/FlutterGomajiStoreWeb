import 'package:flutter/material.dart';
import 'package:flutter_web_demo/views/home/home_content_desktop.dart';
import 'package:flutter_web_demo/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter_web_demo/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeViewState();
  }
}

class _HomeViewState extends State<HomeView> {
  String clickMenu = "MOBILE or Tablet";

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: (sizingInformation.deviceScreenType ==
                    DeviceScreenType.Mobile ||
                sizingInformation.deviceScreenType == DeviceScreenType.Tablet)
            ? NavigationDrawer((String click) {
                Navigator.of(context).pop();
                setState(() {
                  clickMenu = click;
                });
              })
            : null,
        appBar: (sizingInformation.deviceScreenType ==
                    DeviceScreenType.Mobile ||
                sizingInformation.deviceScreenType == DeviceScreenType.Tablet)
            ? createAppBar()
            : null,
        backgroundColor: Colors.white,
        body: ScreenTypeLayout(
            desktop: HomeContentDesktop(),
            mobile: Column(
              children: <Widget>[
                NavigationBar((String clickTitle) {}),
                Text(clickMenu),
              ],
            )),
      ),
    );
  }

  AppBar createAppBar() {
    return AppBar(
      title: Text("AppBar"),
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.orange,
      centerTitle: true,
    );
  }
}
