import 'dart:async';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:workiom/utils/Images/Images.dart';
import '../Get_started/ui/screens/screen1.dart';


@injectable
class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print("Splash delay");
      Future.delayed(Duration(seconds: 2));
      Timer(Duration(milliseconds: 1500), () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()),(route) => false,);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: PlayAnimationBuilder <double>(
            duration: Duration(milliseconds: 2900),
          fps: 2000,
            tween: Tween(begin: 200.0, end: 950),
            builder: (context,value, child) {
              return Column(
                children: [
                  Container(
                    height: value,
                    child: Center(
                        child: Image.asset(
                          ImageAsset.LOGO,
                          fit: BoxFit.cover,
                          height: 500,
                        )),
                  ),
                  Text("Workiom",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)
                ],

              );
            }),
      ),
    );
  }
}
