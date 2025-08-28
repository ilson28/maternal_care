import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onReadMore;

  const BlogCard({
    super.key,
    required this.title,
    required this.description,
    required this.onReadMore,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff7a6f76),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            description,
            style: const TextStyle(fontSize: 13, color: Color(0xff7a6f76)),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: onReadMore,
            child: const Text(
              'Leer más...',
              style: TextStyle(fontSize: 14, color: Colors.pink),
            ),
          ),
        ],
      ),
    );
  }
}
