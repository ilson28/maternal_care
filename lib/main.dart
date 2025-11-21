import 'package:flutter/material.dart';
import 'package:maternalcare/app/myApp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:maternalcare/core/preferences/user_preferences.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

//WidgetsFlutterBinding();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final prefs = UserPreference();
  await prefs.initPrefs();

  runApp(const MyApp());
}
