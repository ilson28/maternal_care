import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/utils/appColors.dart';
import 'package:maternalcare/share_prefs/user_preferences.dart';
import 'package:maternalcare/utils/fetal_data.dart';
import 'package:maternalcare/widgets/menu.dart';

class UserProgress extends StatelessWidget {
  const UserProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = UserPreference();
    final int semanaActual = prefs.weeksGestation;

    // Obtener los datos fetales de esa semana
    final fetalData = getFetalDataByWeek(semanaActual);

    final double longitud = fetalData?.lengthCm ?? 0.0;
    final int peso = fetalData?.weightGrams ?? 0;

    return SafeArea(
      child: Scaffold(
        drawer: Menu(),
        body: Container(
          padding: const EdgeInsets.only(left: 17, right: 17, top: 28),
          width: double.infinity,
          decoration: AppColors.backgroundApp,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("8 10 12 13 14 15 16",
                      style: TextStyle(fontSize: 15)),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 12, left: 12, bottom: 30),
                    child: Text(
                      "$semanaActual",
                      style: GoogleFonts.inder(
                        fontSize: 26,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  const Text("18 19 20 21 22 23 24",
                      style: TextStyle(fontSize: 15)),
                ],
              ),
              Image.asset("assets/images/aguacate.png"),
              Text(
                "Tu bebé luce de este tamaño",
                style: GoogleFonts.inder(
                    fontSize: 18, color: const Color(0xff676767)),
              ),
              const SizedBox(height: 8),
              Text(
                "Estado actual",
                style: GoogleFonts.inder(
                    fontSize: 18, color: const Color(0xff676767)),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/question_1');
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFD5E5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Longitud",
                                style: GoogleFonts.inder(
                                  fontSize: 16,
                                  color: const Color(0xff6D6D6D),
                                ),
                              ),
                              Text(
                                formatLength(longitud),
                                style: GoogleFonts.inder(
                                  fontSize: 24,
                                  color: const Color(0xff404040),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Peso",
                                style: GoogleFonts.inder(
                                  fontSize: 16,
                                  color: const Color(0xff6D6D6D),
                                ),
                              ),
                              Text(
                                formatWeight(peso),
                                style: GoogleFonts.inder(
                                  fontSize: 24,
                                  color: const Color(0xff404040),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 15,
                        ),
                        child: Text(
                          "Tu bebé sigue creciendo día a día. Cada cambio es una señal del hermoso proceso que está viviendo tu cuerpo.",
                          style: GoogleFonts.inder(
                            fontSize: 12,
                            color: const Color(0xff404040),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/profile');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsetsGeometry.only(top: 20),
                      child: Text(
                        "Volver",
                        style: GoogleFonts.inder(
                          fontSize: 18,
                          color: AppColors.primary,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
