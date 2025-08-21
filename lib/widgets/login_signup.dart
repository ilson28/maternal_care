import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:maternalcare/utils/appColors.dart';

class LoginSignup extends StatefulWidget {
  final String type;
  const LoginSignup({super.key, required this.type});
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginSignup> {
  List<bool> isSelected = [true, false];
  int selectedIndex = 0; // 0 = Log in, 1 = Sign up
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.backgroundApp,
      width: double.infinity,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 50, left: 20, right: 20),
        child: Column(children: [
          Image.asset("assets/images/women.png", width: 150),
          Transform.translate(
            offset: Offset(0, -30),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(28)),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AuthButton(
                          text: "Log in",
                          isActive: selectedIndex == 0,
                          onTap: () => setState(() => selectedIndex = 0),
                        ),
                        AuthButton(
                          text: "Sign up",
                          isActive: selectedIndex == 1,
                          onTap: () => setState(() => selectedIndex = 1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "¡Bienvenida al Cuidado Materno!",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontFamily: "Inclusive Sans",
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inclusive Sans",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inclusive Sans",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Color(0xaaC4007C))),
                      child: Text(
                        widget.type == "login".toLowerCase()
                            ? "Log in"
                            : "Create",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  if (widget.type == "login".toLowerCase())
                    Text(
                      "Forgot password?",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

/// 🔹 Botón reutilizable
class AuthButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onTap;

  const AuthButton({
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary : Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: isActive
              ? [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ]
              : [],
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
