import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/utils/appColors.dart';
import 'package:maternalcare/widgets/menu.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          backgroundColor: Color(0xffF8C9C9),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          decoration: AppColors.backgroundApp,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.secondary),
                child: Column(
                  children: [
                    Text(
                      "Mi Perfil",
                      style: GoogleFonts.inder(
                        color: AppColors.primary,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/icons/add_img.png"),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 50, bottom: 7),
                      child: Row(
                        children: [
                          Text(
                            "Nombre",
                            style: GoogleFonts.inder(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 30, bottom: 7),
                      child: Row(
                        children: [
                          Text(
                            "Edad",
                            style: GoogleFonts.inder(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 30, bottom: 7),
                      child: Row(
                        children: [
                          Text(
                            "Semanas  de gestación",
                            style: GoogleFonts.inder(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30))),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(
                                    vertical: 17, horizontal: 20)),
                            backgroundColor:
                                WidgetStatePropertyAll(AppColors.primary)),
                        child: Text(
                          "Guardar Cambios",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
