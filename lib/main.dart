import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:injectable/injectable.dart';
import 'package:workiom/splash_screen/splash_modules.dart';
import 'package:workiom/splash_screen/splash_routes.dart';
import 'package:workiom/utils/logger/logger.dart';
import 'abstracts/module/rout_module.dart';
import 'auth/HiveSetUp.dart';
import 'auth/auth_modules.dart';
import 'di/di_config.dart';
import 'global_nav_key.dart';


// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
// FlutterLocalNotificationsPlugin();
//
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//
  await HiveSetUp.init();

//  ByteData data = await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
//  SecurityContext.defaultContext.setTrustedCertificatesBytes(data.buffer.asUint8List());

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) async {
    FlutterError.onError = (FlutterErrorDetails details) async {
      Logger().error('Main', details.toString(), StackTrace.current);
    };
    runZonedGuarded(() {
      configureDependencies();

      // Your App Here
      runApp(getIt<MyApp>());
    }, (error, stackTrace) {
      Logger().error(
          'Main', error.toString() + stackTrace.toString(), StackTrace.current);
    });
  });
}

@injectable
class MyApp extends StatefulWidget {
//  final AppThemeDataService _themeDataService;

  final SplashModule _splashModule;
  final AuthModule _authModule;


  MyApp(

      this._authModule,
      this._splashModule,

      );

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // LocalNotificationService localNotificationService =
  // LocalNotificationService();
  // static FireNotificationService fireNotificationService =
  // FireNotificationService();

//  late ThemeData activeThem;
//  late String lang;

  @override
  Widget build(BuildContext context) {
    return getConfiguredApp(RoutModule.RoutesMap);
  }

  Widget getConfiguredApp(
      Map<String, WidgetBuilder> fullRoutesList,
      ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      theme: activeThem,

      // localizationsDelegates: [
      //   S.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: S.delegate.supportedLocales,
      title: 'Hooka',
      routes: fullRoutesList,
      theme: ThemeData(
        bottomAppBarColor: Colors.black,
        primaryColor: Colors.black,
        accentColor: Colors.black,
        accentColorBrightness: Brightness.light,
        hoverColor: Colors.black,
        colorScheme: ColorScheme.light(
          primary: Colors.black,
        ),
      ),
      initialRoute: SplashRoutes.SPLASH_SCREEN,
      key: GlobalVariable.mainScreenScaffold,

    );
  }

  @override
  void initState() {
    // fireNotificationService = FireNotificationService();
    //
    // fireNotificationService.init();
    //
    // localNotificationService.init();
    //
    // localNotificationService.onLocalNotificationStream.listen((event) {
    //   setState(() {});
    // });
    // fireNotificationService.onNotificationStream.listen((event) {
    //   localNotificationService.showNotification(event);
    // });
//    activeThem = widget._themeDataService.getActiveTheme();
//    widget._themeDataService.darkModeStream.listen((event) {
//      activeThem = event;
//      setState(() {});
//    });
//    // widget._localizationService= LocalizationService();
//    lang = widget._localizationService.getLanguage();
//
//    widget._localizationService.localizationStream.listen((event) {
//      print(event);
//      lang = event;
//      setState(() {});
//    });

  }
}
enum LegendShape { circle, rectangle }