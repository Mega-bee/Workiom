import 'package:flutter/material.dart';
import 'ChooseYourWorkSpace/ui/screens/choose_your_workspace_screen.dart';
import 'SignIn/ui/signin_screen.dart';
import 'WelcomeToTechDeal/ui/screens/welcome_to_tech_deal_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeToTechDealScreen(),
    );
  }
}