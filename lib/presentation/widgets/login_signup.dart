import 'package:flutter/material.dart';
import 'package:maternalcare/data/datasources/Auth_Services.dart';
import 'package:maternalcare/core/theme/appColors.dart';


class LoginSignup extends StatefulWidget {
  final String type; // "login" o "create"
  const LoginSignup({super.key, required this.type});
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginSignup> {
  late int selectedIndex =
      widget.type == 'login' ? 0 : 1; // 0 = Log in, 1 = Sign up

  final AuthService _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  Future<void> _handleAuth() async {
    setState(() => _isLoading = true);

    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    try {
      if (widget.type == "login") {
        final user = await _authService.signIn(email, password);

        if (user != null) {
          // Cuando el login es exitoso, te redirige al perfil
          Navigator.pushReplacementNamed(context, "/profile");
        } else {
          _showError("Error al iniciar sesión");
        }
      } else {
        final user = await _authService.register(email, password);

        if (user != null) {
          // Después del registro, también va a completar perfil
          Navigator.pushReplacementNamed(context, "/profile");
        } else {
          _showError("Error al registrarse");
        }
      }
    } catch (e) {
      _showError("Error: $e");
    }

    setState(() => _isLoading = false);
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.backgroundApp,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(children: [
          Image.asset("assets/images/women.png", width: 150),
          Transform.translate(
            offset: const Offset(0, -30),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(28)),
              child: Column(
                children: [
                  // 🔹 Botones arriba
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AuthButton(
                          text: "Log in",
                          isActive: selectedIndex == 0,
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                        ),
                        AuthButton(
                          text: "Sign up",
                          isActive: selectedIndex == 1,
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/signup');
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "¡Bienvenida al Cuidado Materno!",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontFamily: "Inclusive Sans",
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 28),

                  // 🔹 Email
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: "E-mail",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inclusive Sans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  // 🔹 Password
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inclusive Sans",
                        fontSize: 14,
                      ),
                    ),
                  ),

                  const SizedBox(height: 28),

                  // 🔹 Botón principal
                  _isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : ElevatedButton(
                          onPressed: _handleAuth,
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color(0xaaC4007C),
                            ),
                          ),
                          child: Text(
                            widget.type == "login" ? "Log in" : "Create",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),

                  const SizedBox(height: 15),

                  // 🔹 Forgot password solo en login
                  if (widget.type == "login")
                    GestureDetector(
                      onTap: () {
                        // aquí puedes implementar reset password
                        _showError("Funcionalidad en desarrollo");
                      },
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
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
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary : const Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(20),
          boxShadow: isActive
              ? [
                  const BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ]
              : [],
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
