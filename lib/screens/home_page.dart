import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:industryostaskonline/chart.dart';
import 'package:industryostaskonline/screens/audit_reports.dart';
import 'package:industryostaskonline/screens/daily_logs.dart';
import 'package:industryostaskonline/screens/line_chart.dart';
import 'package:industryostaskonline/screens/login_page.dart';
import 'package:industryostaskonline/screens/reports.dart';
import 'package:industryostaskonline/sidebar/sidebar_item.dart';
import 'package:industryostaskonline/sidebar/sidebar_layout.dart';
import 'package:page_transition/page_transition.dart';

final data = [55.0, 90.0, 50.0, 40.0, 35.0, 55.0, 70.0, 100.0];

class HomePage extends StatefulWidget {
  static String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Hello,",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                Text(
                  "Uday Shankar",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Employee ID: 1216543",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Enterprise License",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: ClayContainer(
                    height: 300,
                    width: width * 0.8,
                    depth: 12,
                    spread: 12,
                    borderRadius: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16,
                            top: 16,
                          ),
                          child: Text(
                            "Total Sales",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          child: Text(
                            "Year: 2020",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Chart(
                          data: data,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ClayContainer(
                      height: 180,
                      width: width * 0.35,
                      borderRadius: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16,
                              top: 16,
                            ),
                            child: Text(
                              "Balance for today",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 20.0),
                            child: Text(
                              "\$20,000",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: const EdgeInsets.only(
                              bottom: 16,
                              left: 16,
                              right: 16,
                            ),
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ClayContainer(
                      height: 180,
                      width: width * 0.35,
                      borderRadius: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16,
                              top: 16,
                            ),
                            child: Text(
                              "Stocks",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Gold 18.5%",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(Icons.arrow_upward)
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Metal 35%",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(Icons.arrow_downward)
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Trade 5%",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(Icons.arrow_downward)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin:
                                  const EdgeInsets.only(bottom: 16, right: 16),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFF559F),
                                    Color(0xFFCF5CCF),
                                    Color(0xFFFF57AC),
                                    Color(0xFFFF6D91),
                                    Color(0xFFFF8D7E),
                                    Color(0xFFB6BAA6),
                                  ],
                                ),
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "June 2020",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "-\$480.4",
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: ClayContainer(
                        width: 40,
                        height: 40,
                        borderRadius: 8,
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFFF559F),
                                  Color(0xFFCF5CCF),
                                  Color(0xFFFF57AC),
                                  Color(0xFFFF6D91),
                                  Color(0xFFFF8D7E),
                                  Color(0xFFB6BAA6),
                                ]).createShader(bounds);
                          },
                          blendMode: BlendMode.srcATop,
                          child: Icon(
                            Icons.assignment,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                      ),
                      title: Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Text(
                        "12 March 13:43",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      trailing: Text("-\$120.2",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          )),
                    ),
                    ListTile(
                      leading: ClayContainer(
                        width: 40,
                        height: 40,
                        borderRadius: 8,
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFFF559F),
                                  Color(0xFFCF5CCF),
                                  Color(0xFFFF57AC),
                                  Color(0xFFFF6D91),
                                  Color(0xFFFF8D7E),
                                  Color(0xFFB6BAA6),
                                ]).createShader(bounds);
                          },
                          blendMode: BlendMode.srcATop,
                          child: Icon(
                            Icons.assignment,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                      ),
                      title: Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Text(
                        "12 March 13:43",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      trailing: Text("-\$120.2",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          )),
                    ),
                    ListTile(
                      leading: ClayContainer(
                        width: 40,
                        height: 40,
                        borderRadius: 8,
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFFF559F),
                                  Color(0xFFCF5CCF),
                                  Color(0xFFFF57AC),
                                  Color(0xFFFF6D91),
                                  Color(0xFFFF8D7E),
                                  Color(0xFFB6BAA6),
                                ]).createShader(bounds);
                          },
                          blendMode: BlendMode.srcATop,
                          child: Icon(
                            Icons.assignment,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                      ),
                      title: Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Text(
                        "12 March 13:43",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      trailing: Text("-\$120.2",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          )),
                    ),
                    ListTile(
                      leading: ClayContainer(
                        width: 40,
                        height: 40,
                        borderRadius: 8,
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFFF559F),
                                  Color(0xFFCF5CCF),
                                  Color(0xFFFF57AC),
                                  Color(0xFFFF6D91),
                                  Color(0xFFFF8D7E),
                                  Color(0xFFB6BAA6),
                                ]).createShader(bounds);
                          },
                          blendMode: BlendMode.srcATop,
                          child: Icon(
                            Icons.assignment,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                      ),
                      title: Text(
                        "Lorem Ipsum",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Text(
                        "12 March 13:43",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      trailing: Text("-\$120.2",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          )),
                    ),
                  ],
                ),
//                CategoriesRow(),
//                PieChartView(),
                SizedBox(
                  height: 20,
                ),
                LineChartAnalysis(),
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
