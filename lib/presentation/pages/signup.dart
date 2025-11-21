import 'package:flutter/material.dart';
import 'package:maternalcare/presentation/widgets/login_signup.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: LoginSignup(type: "create"),
    ));
  }
}
