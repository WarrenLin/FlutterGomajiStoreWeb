import 'package:flutter/material.dart';
import 'package:flutter_web_demo/views/home/home_content_desktop.dart';
import 'package:flutter_web_demo/views/home/home_content_mobile.dart';
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
  String clickMenu = "預約管理";

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
                HomeContentMobile()
              ],
            )),
      ),
    );
  }

  AppBar createAppBar() {
    return AppBar(
      title: Text(clickMenu, style: TextStyle(color: Colors.black),),
      iconTheme: IconThemeData(color: Colors.orange),
      backgroundColor: Colors.white,
      centerTitle: false,
      actions: <Widget>[
        getActionIcon()
      ],
    );
  }

  Widget getActionIcon() {
    if(clickMenu == "預約管理") {
      return Icon(Icons.calendar_today, color: Colors.orange,);
    }
    else {
      return Container();
    }
  }
}
