import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:industryostaskonline/chart.dart';
import 'package:industryostaskonline/screens/daily_logs.dart';
import 'package:industryostaskonline/screens/home_page.dart';
import 'package:industryostaskonline/screens/reports.dart';
import 'package:industryostaskonline/sidebar/sidebar_item.dart';
import 'package:industryostaskonline/sidebar/sidebar_layout.dart';
import 'package:page_transition/page_transition.dart';

class AuditReports extends StatefulWidget {
  static String id = 'audit_reports';
  @override
  _AuditReportsState createState() => _AuditReportsState();
}

class _AuditReportsState extends State<AuditReports> {
  int selectedIndex = 3;
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
          Navigator.push(context,
              PageTransition(type: PageTransitionType.fade, child: Reports()));
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
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade, child: AuditReports()));
          break;
      }

      startYPosition = renderBox.localToGlobal(Offset.zero).dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Audit Reports",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(10.0),
//                        boxShadow: [
//                          BoxShadow(
//                              color: Color.fromRGBO(0, 0, 0, 0.1),
//                              offset: Offset(6, 2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0),
//                          BoxShadow(
//                              color: Color.fromRGBO(255, 255, 255, 0.9),
//                              offset: Offset(-6, -2),
//                              blurRadius: 6.0,
//                              spreadRadius: 3.0)
//                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 70.0),
                  child: Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFFF559F),
                        Color(0xFFCF5CCF),
                      ]),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 50,
                      onPressed: () {},
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
      endDrawer: Stack(
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
      ),
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
