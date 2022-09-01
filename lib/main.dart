import 'package:flutter/material.dart';
import 'package:workiom/NavigationBar/ui/Screen/NavigationBar.dart';
import 'package:workiom/splash_screen.dart';

import 'dashboard_pie/ui/screen/dashboard.dart';
import 'dashboard_pie/ui/screen/pie_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoard(),
    );
  }
}
enum LegendShape { circle, rectangle }