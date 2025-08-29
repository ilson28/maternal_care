import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/utils/appColors.dart';

class Questions extends StatelessWidget {
  final String question;
  final bool emoji;
  final String back;
  final String next;

  const Questions(
      {super.key,
      required this.question,
      required this.emoji,
      required this.back,
      required this.next});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 50),
      decoration: AppColors.backgroundApp,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.inder(
                        color: Color(0xff404040),
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: "Username",
                          style: GoogleFonts.inder(
                            color: AppColors.primary,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text:
                              " Responde las siguientes preguntas para llevar un seguimiento controlado de tu embarazo.",
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 70),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffFFA2DD)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.inder(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: question,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                emoji
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, this.next);
                        },
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.inder(
                              fontSize: 30,
                            ),
                            children: [
                              TextSpan(
                                text: "😊 😟 😐 😡",
                              ),
                            ],
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, this.next);
                              },
                              style: ButtonStyle(),
                              child: Text(
                                "Si",
                                style: TextStyle(
                                    color: AppColors.primary, fontSize: 16),
                              )),
                          SizedBox(width: 20),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, this.next);
                              },
                              child: Text("No",
                                  style: TextStyle(
                                      color: AppColors.primary, fontSize: 16))),
                        ],
                      ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, this.back);
                },
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.inder(
                      color: AppColors.primary,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: "Volver",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
