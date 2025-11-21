import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/core/theme/appColors.dart';
import 'package:maternalcare/presentation/widgets/blogCard.dart';

class VideosSection extends StatelessWidget {
  const VideosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: AppColors.backgroundApp,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Biblioteca",
                      style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 26)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Videos',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary),
                ),
              ),
              const SizedBox(height: 6),
              Container(height: 1, color: Colors.white),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/videouno.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  Image.asset(
                    'assets/images/videodos.png',
                    width: 140,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/videotres.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'blogs',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary),
                ),
              ),
              const SizedBox(height: 6),
              Container(height: 1, color: Colors.white),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlogCard(
                    title: 'Cambios en tu cuerpo',
                    description:
                        'Tu cuerpo vive\ntransformaciones únicas\ndurante el embarazo',
                    onReadMore: () {
                      print('Click en Blog 1');
                    },
                  ),
                  const SizedBox(width: 3),
                  BlogCard(
                    title: 'Alimentación ',
                    description:
                        'Come mejor para ti\ny tu bebé cada día\nsin restricciones duras',
                    onReadMore: () {
                      print('Click en Blog 2');
                    },
                  ),
                  const SizedBox(width: 10),
                  BlogCard(
                    title: 'Descanso y energía',
                    description:
                        'Dormir bien te ayuda\na mantener calma\ny cuidar tu salud',
                    onReadMore: () {
                      print('Click en Blog 3');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 3),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Articulos',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary),
                ),
              ),
              const SizedBox(height: 3),
              Container(height: 1, color: Colors.white),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlogCard(
                    title: 'vida sana',
                    description:
                        'Pequeños hábitos diarios te ayudan a sentirte mejor y mantener tu bienestar.',
                    onReadMore: () {
                      print('Click en Blog 1');
                    },
                  ),
                  const SizedBox(width: 10),
                  BlogCard(
                    title: 'confianza',
                    description:
                        'Cuidarte y escuchar tu cuerpo fortalece tu seguridad en esta etapa.',
                    onReadMore: () {
                      print('Click en Blog 2');
                    },
                  ),
                  const SizedBox(width: 10),
                  BlogCard(
                    title: ' diario',
                    description:
                        'Pequeños gestos\ndurante el día\nmejoran tu bienestar',
                    onReadMore: () {
                      print('Click en Artículo 1');
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
