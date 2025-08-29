import 'package:flutter/material.dart';
import 'package:maternalcare/utils/appColors.dart';

class Answer extends StatelessWidget {
  const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFC7D3), // rosado arriba
              Color(0xFFFFF4F6), // rosado claro abajo
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 90),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Burbuja con borde azul
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              height: 1.35,
                            ),
                            children: [
                              TextSpan(
                                text: 'Username',
                                style: TextStyle(
                                  color: AppColors.primary, // rosado fuerte
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' por favor ingresa los signos desconocidos que pueden ser alarmantes, muy pronto un profesional se contactara contigo',
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                      // Tarjeta rosa
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(22),
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20),
                              color: Colors.white,
                              child: const Text(
                                'Lorem ipsum dolor sit amet,\n'
                                'consectetur adipiscing elit.\n'
                                '  Sed ut perspiciatis unde omnis\n'
                                'ste natus error sit voluptatem\n'
                                'accusantium d\n'
                                'oloremque laudantium.',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 18,
                                  height: 1.3,
                                ),
                              ),
                            ),
                            const SizedBox(height: 26),
                            SizedBox(
                              height: 44,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, "/answer-saved");
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffC4007C),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  elevation: 4,
                                ),
                                child: const Text(
                                  'Enviar',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // "volver" abajo derecha
              Positioned(
                right: 22,
                bottom: 22,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/question_5");
                  },
                  child: const Text(
                    'volver',
                    style: TextStyle(
                      color: Color(0xFFDB2C7A),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
