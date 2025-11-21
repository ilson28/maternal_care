import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:maternalcare/core/preferences/user_preferences.dart';
import 'package:maternalcare/core/theme/appColors.dart';

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
    final prefs = UserPreference(); // singleton

    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
      decoration: AppColors.backgroundApp,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.inder(
                        color: const Color(0xff404040),
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(
                          text: prefs.username,
                          style: GoogleFonts.inder(
                            color: AppColors.primary,
                            fontSize: 14,
                          ),
                        ),
                        const TextSpan(
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
          const SizedBox(height: 70),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffFFA2DD)),
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
                const SizedBox(
                  height: 20,
                ),
                emoji
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, next);
                        },
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.inder(
                              fontSize: 30,
                            ),
                            children: const [
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
                                Navigator.pushReplacementNamed(context, next);
                              },
                              style: const ButtonStyle(),
                              child: const Text(
                                "Si",
                                style: TextStyle(
                                    color: AppColors.primary, fontSize: 16),
                              )),
                          const SizedBox(width: 20),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, next);
                              },
                              child: const Text("No",
                                  style: TextStyle(
                                      color: AppColors.primary, fontSize: 16))),
                        ],
                      ),
              ],
            ),
          ),
          const SizedBox(
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, back);
                },
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.inder(
                      color: AppColors.primary,
                      fontSize: 16,
                    ),
                    children: const [
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
