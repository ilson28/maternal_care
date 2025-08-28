import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/utils/appColors.dart';

class WhiteBox extends StatelessWidget {
  const WhiteBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: AppColors.backgroundApp,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text("Biblioteca",
                      style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 26)),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Título general
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/planta.png",
                          width: 28,
                          height: 28,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Cuidados prenatales",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    //////////////////////////////////////////////////////////////////////
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/doctor.png",
                            width: 28, height: 28),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("1. Guía básica de controles prenatales"),
                              Text("¿Qué exámenes necesito?"),
                              Text("Frecuencia de consultas médicas"),
                              Text("Señales importantes a reportar al médico"),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    ////////////////////////////////////////////////////////////////////////////
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/pan.png",
                            width: 28, height: 28),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                  "2. Alimentación saludable durante el embarazo"),
                              Text("Nutrientes esenciales para ti y tu bebé"),
                              Text("Hidratación y suplementos prenatales"),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),
                    ///////////////////////////////////////////////////////////////////////////
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 8),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "3. Actividad física segura para embarazadas",
                                ),
                                Text("Ejercicios recomendados"),
                                Text("Lo que debes evitar"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),
                    /////////////////////////////////////////////////////////////////////////
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/corazon.png",
                            width: 28, height: 28),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "4. Salud mental y emocional en el embarazo",
                              ),
                              Text(
                                  "Cómo manejar la ansiedad y cambios emocionales"),
                              Text("Apoyo emocional y redes de cuidado"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 16),
                    child: Text(
                      "Volver",
                      style: GoogleFonts.inder(
                        color: AppColors.primary,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
