import 'package:flutter/material.dart';
import 'package:workiom/splash_screen.dart';
import 'package:workiom/utils/style/Colors.dart';
import 'NavigationBar/ui/Screen/NavigationBar.dart';

import 'Get_started/ui/screens/screen1.dart';

void main() {
  runApp( MyApp());

}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(),

    );
  }
}

