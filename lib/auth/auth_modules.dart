import 'package:flutter/material.dart';

import 'package:injectable/injectable.dart';
import 'package:workiom/auth/auth_routes.dart';
import 'package:workiom/auth/ui/screen/choose_your_workspace_screen.dart';
import 'package:workiom/auth/ui/screen/login_screen.dart';

import '../abstracts/module/rout_module.dart';

@injectable
class AuthModule extends RoutModule {
  final ChooseYourWorkspaceScreen _chooseYourWorkspaceScreen;
  final LogInScreen _screen;


  AuthModule(this._chooseYourWorkspaceScreen,this._screen) {
    RoutModule.RoutesMap.addAll(getRoutes());
  }
  Map<String, WidgetBuilder> getRoutes() {
    return {
      AuthRoutes.WORKSPACE_SCREEN: (context) => _chooseYourWorkspaceScreen,
      AuthRoutes.LOGIN_SCREEN: (context) => _screen,


    };
  }
}