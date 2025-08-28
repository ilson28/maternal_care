import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternalcare/utils/appColors.dart';
import 'package:maternalcare/widgets/blogCard.dart';

class VideosSection extends StatelessWidget {
  const VideosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: AppColors.backgroundApp,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Biblioteca",
                      style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 26)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
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
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
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
                    title: 'Blog title',
                    description:
                        'Lorem ipsum  dolor sit amet \net delectus \naccommoda',
                    onReadMore: () {
                      print('Click en Blog 1');
                    },
                  ),
                  const SizedBox(width: 10),
                  BlogCard(
                    title: 'Blog title',
                    description:
                        'Lorem ipsum  dolor sit amet \net delectus \naccommoda',
                    onReadMore: () {
                      print('Click en Blog 2');
                    },
                  ),
                  const SizedBox(width: 10),
                  BlogCard(
                    title: 'Blog title',
                    description:
                        'Lorem ipsum  dolor sit amet \net delectus \naccommoda',
                    onReadMore: () {
                      print('Click en Blog 3');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                  'Articulos',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary),
                ),
              ),
              const SizedBox(height: 10),
              Container(height: 1, color: Colors.white),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlogCard(
                    title: ' title',
                    description:
                        'Lorem ipsum  dolor sit amet \net delectus \naccommoda',
                    onReadMore: () {
                      print('Click en Blog 1');
                    },
                  ),
                  const SizedBox(width: 10),
                  BlogCard(
                    title: 'title',
                    description:
                        'Lorem ipsum  dolor sit amet \net delectus \naccommoda',
                    onReadMore: () {
                      print('Click en Blog 2');
                    },
                  ),
                  const SizedBox(width: 10),
                  BlogCard(
                    title: 'title',
                    description:
                        'Lorem ipsum  dolor sit amet \net delectus \naccommoda',
                    onReadMore: () {
                      print('Click en Blog 3');
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
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
            ],
          ),
        ),
      ),
    );
  }
}
