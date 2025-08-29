import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/screens/userProgress.dart';
import 'package:maternalcare/utils/appColors.dart';
import 'package:maternalcare/widgets/alert.dart';
import 'package:maternalcare/widgets/userProgressWithModal.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xffFAE3EC),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Menú",
                      style: GoogleFonts.inder(
                        color: AppColors.primary,
                        fontSize: 18,
                      ),
                    ),
                    GestureDetector(
                      child: Image.asset("assets/icons/img_profile.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/profile');
                      },
                      child: Text(
                        "Perfil",
                        style: GoogleFonts.inder(
                          color: AppColors.primary,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const UserProgressWithModal()),
                        );
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icons/alert.png"),
                          Text("Alertas")
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/library');
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icons/library.png"),
                          Text("Biblioteca")
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/chat');
                      },
                      child: Image.asset("assets/icons/robot.png"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, '/user-progress');
                      },
                      child: Text(
                        "Ver mi progreso",
                        style: GoogleFonts.inder(
                          color: AppColors.primary,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Botón de cerrar arriba a la derecha
            Positioned(
              top: 30, // distancia desde arriba
              right: 10, // distancia desde la derecha
              child: IconButton(
                icon: const Icon(Icons.close, size: 28, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context); // cierra el Drawer
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
