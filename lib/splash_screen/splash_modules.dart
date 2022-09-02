import 'package:flutter/material.dart';

import 'package:injectable/injectable.dart';
import 'package:workiom/auth/auth_routes.dart';
import 'package:workiom/auth/ui/screen/choose_your_workspace_screen.dart';
import 'package:workiom/splash_screen/splash_routes.dart';
import 'package:workiom/splash_screen/splash_screen.dart';

import '../abstracts/module/rout_module.dart';

@injectable
class SplashModule extends RoutModule {
  final SplashScreen _screen;


  SplashModule(this._screen) {
    RoutModule.RoutesMap.addAll(getRoutes());
  }
  Map<String, WidgetBuilder> getRoutes() {
    return {
      SplashRoutes.SPLASH_SCREEN: (context) => _screen,


    };
  }
}