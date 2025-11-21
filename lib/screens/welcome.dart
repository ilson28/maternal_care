import 'package:flutter/material.dart';
import 'package:maternalcare/utils/appColors.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: AppColors.backgroundApp,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 113, bottom: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "¡Bienvenida al Cuidado Materno!",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontFamily: "Inclusive Sans",
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const Text(
                    "Tu compañero en el embarazo y posparto",
                    style: TextStyle(
                      color: Color(0xff555555),
                      fontFamily: "Inclusive Sans",
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Image.asset(
                    "assets/images/rectangle.png",
                    height: 280,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 40),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(AppColors.primary)),
                        child: const Text(
                          "Log in",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account? ",
                        style: TextStyle(
                          color: Color(0x66000000),
                          fontFamily: "Inder",
                          fontSize: 14,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, "/profile");
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontFamily: "Inder",
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
