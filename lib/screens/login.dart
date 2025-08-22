import 'package:flutter/material.dart';
import 'package:maternalcare/widgets/login_signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: LoginSignup(type: "login"),
    ));
  }
}
