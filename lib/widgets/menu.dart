import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/utils/appColors.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xffFAE3EC),
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Menú",
                    style: GoogleFonts.inder(
                      color: AppColors.primary,
                      fontSize: 18,
                    )),
                GestureDetector(
                  child: Image.asset("assets/icons/img_profile.png"),
                ),
                Text("Perfil",
                    style: GoogleFonts.inder(
                      color: AppColors.primary,
                      fontSize: 18,
                    )),
                GestureDetector(
                  child: Image.asset("assets/icons/alert.png"),
                ),
                GestureDetector(
                  child: Image.asset("assets/icons/library.png"),
                ),
                GestureDetector(
                  child: Image.asset("assets/icons/robot.png"),
                ),
                Text("Ver mi progreso",
                    style: GoogleFonts.inder(
                      color: AppColors.primary,
                      fontSize: 20,
                    )),
              ]),
        ),
      ),
    );
  }
}
