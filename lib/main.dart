import 'package:flutter/material.dart';
import 'package:maternalcare/myApp.dart';
import 'package:maternalcare/share_prefs/user_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final prefs = UserPreference();
  await prefs.initPrefs();
  runApp(MyApp());
}
