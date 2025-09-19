import 'package:flutter/material.dart';
import 'package:maternalcare/myApp.dart';
import 'package:maternalcare/share_prefs/user_preferences.dart';

void main() async {
  final prefs = UserPreference();
  await prefs.initPrefs();
  runApp(MyApp());
}
