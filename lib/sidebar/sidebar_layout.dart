import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:industryostaskonline/screens/daily_logs.dart';
import 'package:industryostaskonline/screens/home_page.dart';
import 'package:page_transition/page_transition.dart';

import 'sidebar_item.dart';

class SidebarLayout extends StatefulWidget {
  @override
  _SidebarLayoutState createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> with AfterLayoutMixin {
  int selectedIndex = 0;
  LabeledGlobalKey _dashboardKey = LabeledGlobalKey("dashboardtKey");
  LabeledGlobalKey _reportKey = LabeledGlobalKey("reportKey");
  LabeledGlobalKey _dailyLogKey = LabeledGlobalKey("dailyLogKey");
  LabeledGlobalKey _auditReportsKey = LabeledGlobalKey("auditReportKey");

  RenderBox renderBox;
  double startYPosition;

  void onTabTap(int index) {
    setState(() {
      selectedIndex = index;
      switch (selectedIndex) {
        case 0:
          renderBox = _dashboardKey.currentContext.findRenderObject();
          Navigator.push(context,
              PageTransition(type: PageTransitionType.fade, child: HomePage()));
          break;
        case 1:
          renderBox = _reportKey.currentContext.findRenderObject();

          break;
        case 2:
          renderBox = _dailyLogKey.currentContext.findRenderObject();
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade, child: DailyLogs()));
          break;
        case 3:
          renderBox = _auditReportsKey.currentContext.findRenderObject();
          break;
      }

      startYPosition = renderBox.localToGlobal(Offset.zero).dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          width: 90,
          top: 0,
          bottom: 0,
          right: 0,
          child: ClipPath(
            clipper: SidebarClipper(
              (startYPosition == null) ? 0 : startYPosition - 40,
              (startYPosition == null) ? 0 : startYPosition + 80,
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFFF559F),
                    Color(0xFFCF5CCF),
                    Color(0xFFFF57AC),
                    Color(0xFFFF6D91),
                    Color(0xFFFF8D7E),
                    Color(0xFFB6BAA6),
                  ],
                  stops: [0.05, 0.3, 0.5, 0.55, 0.8, 1],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: -17,
          top: 0,
          bottom: 0,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.assessment,
                color: Colors.white,
              ),
              SizedBox(
                height: 120,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SidebarItem(
                      key: _dashboardKey,
                      text: "Dashboard",
                      onTabTap: () {
                        onTabTap(0);
                      },
                      isSelected: selectedIndex == 0,
                    ),
                    SidebarItem(
                      key: _reportKey,
                      text: "Reports",
                      onTabTap: () {
                        onTabTap(1);
                      },
                      isSelected: selectedIndex == 1,
                    ),
                    SidebarItem(
                      key: _dailyLogKey,
                      text: "Daily Log",
                      onTabTap: () {
                        onTabTap(2);
                      },
                      isSelected: selectedIndex == 2,
                    ),
                    SidebarItem(
                      key: _auditReportsKey,
                      text: "Audits",
                      onTabTap: () {
                        onTabTap(3);
                      },
                      isSelected: selectedIndex == 3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      renderBox = _dashboardKey.currentContext.findRenderObject();
      startYPosition = renderBox.localToGlobal(Offset.zero).dy;
    });
  }
}

class SidebarClipper extends CustomClipper<Path> {
  final double startYPosition, endYPosition;

  SidebarClipper(this.startYPosition, this.endYPosition);

  @override
  Path getClip(Size size) {
    Path path = Path();

    double width = size.width;
    double height = size.height;

    //up curve
    path.moveTo(width, 0);
    path.quadraticBezierTo(width / 3, 5, width / 3, 70);

    //custom curve
    path.lineTo(width / 3, startYPosition);
    path.quadraticBezierTo(width / 3 - 2, startYPosition + 15, width / 3 - 10,
        startYPosition + 25);
    path.quadraticBezierTo(0, startYPosition + 45, 0, startYPosition + 60);
    path.quadraticBezierTo(
        0, endYPosition - 45, width / 3 - 10, endYPosition - 25);
    path.quadraticBezierTo(
        width / 3 - 2, endYPosition - 15, width / 3, endYPosition);

    //down curve
    path.lineTo(width / 3, height - 70);
    path.quadraticBezierTo(width / 3, height - 5, width, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
