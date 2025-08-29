import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/utils/appColors.dart';

class AnswerSaved extends StatelessWidget {
  const AnswerSaved({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        decoration: AppColors.backgroundApp,
        child: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 20),
              child: Text(
                "¡Respuestas guardadas\n con éxito!",
                style: GoogleFonts.inder(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primary),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 12, left: 30, right: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text(
                  "Gracias por responder tu control diario . Ya puedes ver el estado actual de tu embarazo y seguir de cerca el crecimiento de tu bebé ",
                  style:
                      GoogleFonts.inder(fontSize: 15, color: Color(0xff6E6E6E)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Image.asset("assets/icons/baby.png")],
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "Ver mi progreso",
            style: GoogleFonts.inder(
                fontSize: 20,
                color: AppColors.primary,
                fontWeight: FontWeight.w400),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
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
        ]),
      ),
    ));
  }
}
