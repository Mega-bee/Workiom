
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';


class HiveSetUp {
  static Future<void> init() async {
    await Hive.initFlutter();
    await publicBoxes();
  }

  static Future<void> publicBoxes() async {
    await Hive.openBox('Authorization');
    await Hive.openBox('language');
    await Hive.openBox('themeColor');

  }
}

@injectable
class AuthPrefsHelper {
  var box = Hive.box('Authorization');

  void setToken(String username) {
    box.put('token', username);
  }

  String? getToken() {
    return box.get('token');
  }
  void setName(String name) {
    box.put('name', name);
  }

  String? getName() {
    return box.get('name');
  }

  Future<void> clearToken() async {
    await box.clear();
  }

  bool isSignedIn() {
    try {
      String? uid = getToken();
      return uid != null;
    } catch (e) {
      return false;
    }
  }
}

class LanguageHelper {
  var box = Hive.box('language');

  void setLanguage(String username) {
    box.put('lang', username);
  }

  String? getLanguage() {
    return box.get('lang');
  }
}

class ThemeHelper {
  var box = Hive.box('themeColor');

  void setTheme(bool isDark) {
    box.put('theme', isDark);
  }

  bool getisDark() {
    if (box.get('theme') == null) {
      return true;
    }
    return box.get('theme');
  }
}