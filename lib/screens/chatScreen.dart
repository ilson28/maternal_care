import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/utils/appColors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: AppColors.backgroundApp,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.8 *
                                      0.5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD6D6D6),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  height: 40,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.6 *
                                      0.5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD6D6D6),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  height: 40,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.5 *
                                      0.5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD6D6D6),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  height: 40,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.7 *
                                      0.5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD6D6D6),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  height: 40,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.5 *
                                      0.5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD6D6D6),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  height: 40,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.6 *
                                      0.5,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD6D6D6),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  height: 40,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFFE6B8E0),
                                        Color(0xFFE4ADD9),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, right: 16),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/library');
                      },
                      child: Text(
                        "Volver",
                        style: GoogleFonts.inder(
                          color: AppColors.primary,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
