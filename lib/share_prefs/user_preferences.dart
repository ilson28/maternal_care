import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static final UserPreference _instace = UserPreference._internal();

  factory UserPreference() {
    return _instace;
  }

  UserPreference._internal();

  //  Datos que me interesan en mi app
  String get username => _prefs.getString("username") ?? '';
  set username(String value) => _prefs.setString('username', value);

  int get age => _prefs.getInt("age") ?? 0;
  set age(int value) => _prefs.setInt("age", value);

  int get weeksGestation => _prefs.getInt("weeksGestation") ?? 0;
  set weeksGestation(int value) => _prefs.setInt("weeksGestation", value);
}
