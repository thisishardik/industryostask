import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:industryostaskonline/chart.dart';
import 'package:industryostaskonline/screens/audit_reports.dart';
import 'package:industryostaskonline/screens/home_page.dart';
import 'package:industryostaskonline/screens/login_page.dart';
import 'package:industryostaskonline/screens/reports.dart';
import 'package:industryostaskonline/screens/sign_up_page.dart';
import 'package:industryostaskonline/sidebar/sidebar_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignUpPage.id,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      ),
      routes: {
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (context) => LoginPage(),
        SignUpPage.id: (context) => SignUpPage(),
        Reports.id: (context) => Reports(),
        AuditReports.id: (context) => AuditReports(),
      },
    );
  }
}
