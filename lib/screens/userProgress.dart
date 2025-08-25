import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/utils/appColors.dart';

class UserProgress extends StatelessWidget {
  const UserProgress({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 7, right: 7, top: 28),
        width: double.infinity,
        decoration: AppColors.backgroundApp,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("8 10 12 13 14 15 16", style: TextStyle(fontSize: 15)),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 12, left: 12, bottom: 30),
                  child: Text("17",
                      style: GoogleFonts.inder(
                          fontSize: 26, color: AppColors.primary)),
                ),
                Text("18 19 20 21 22 23 24", style: TextStyle(fontSize: 15)),
              ],
            ),
            Transform.translate(
              offset: Offset(0, -30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Stack(alignment: Alignment.center, children: [
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColors.primary,
                      ),
                      Icon(Icons.favorite, color: AppColors.primary, size: 40),
                    ]),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10),
            Image.asset("assets/images/aguacate.png"),
            Text(
              "Tu bebé luce de este tamaño",
              style: GoogleFonts.inder(fontSize: 18, color: Color(0xff676767)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Estado actual",
              style: GoogleFonts.inder(fontSize: 18, color: Color(0xff676767)),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xffFFD5E5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("Logintud",
                                style: GoogleFonts.inder(
                                    fontSize: 16, color: Color(0xff6D6D6D))),
                            Text("15,6",
                                style: GoogleFonts.inder(
                                    fontSize: 24, color: Color(0xff404040))),
                            Text("CM",
                                style: GoogleFonts.inder(
                                    fontSize: 24, color: Color(0xff404040))),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Peso",
                                style: GoogleFonts.inder(
                                    fontSize: 16, color: Color(0xff6D6D6D))),
                            Text("145",
                                style: GoogleFonts.inder(
                                    fontSize: 24, color: Color(0xff404040))),
                            Text("GRAMOS",
                                style: GoogleFonts.inder(
                                    fontSize: 24, color: Color(0xff404040))),
                          ],
                        ),
                      ]),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: Text(
                        "Lorem ipsum dolor sit amet consectetur  adipiscing elit, vel curae malesuada fringilla",
                        style: GoogleFonts.inder(
                            fontSize: 12, color: Color(0xff404040))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/profile');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Volver",
                      style: GoogleFonts.inder(
                          fontSize: 18, color: AppColors.primary))
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
