import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/utils/appColors.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppColors.backgroundApp,
        child: Stack(
          children: [
            // Tarjeta central con íconos en las esquinas
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Caja blanca
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 60),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Felicidades",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inder(
                                  fontSize: 18, color: Colors.black),
                            ),
                            Text(
                              " ¡UserName!",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inder(
                                  fontSize: 18, color: AppColors.primary),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "¡Estás a punto de comenzar una hermosa aventura y no estarás sola! "
                          "¡Vamos a hacer de este viaje algo increíble!",
                          textAlign: TextAlign.start,
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff6E6E6E)),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Mi perfil",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // 🎉 Confeti arriba derecha (pegado al borde del container)
                  Positioned(
                    top: -30,
                    right: -1,
                    child: Image.asset("assets/icons/party.png"),
                  ),

                  // 😀 Emoji abajo izquierda (pegado al borde del container)
                  Positioned(
                    bottom: 0,
                    left: -30,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/icons/happy_face.png"),
                    ),
                  ),
                ],
              ),
            ),

            // Texto volver (parte de afuera, abajo derecha)
            Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                "volver",
                style: TextStyle(
                  color: Colors.pink.shade700,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
