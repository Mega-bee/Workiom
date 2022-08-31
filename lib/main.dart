import 'package:flutter/material.dart';
import 'package:workiom/utils/style/Colors.dart';
import 'NavigationBar/ui/Screen/NavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: PrimaryColor,
        ),
        home: NavigationBarr()
    );
  }
}
