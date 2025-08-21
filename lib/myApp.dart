import 'package:flutter/material.dart';

import 'package:maternalcare/screens/welcome.dart';
import 'package:maternalcare/widgets/login_signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Maternal care',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: Scaffold(
        body: LoginSignup(
          type: "create",
        ),
      ),
    );
  }
}
