import 'package:flutter/material.dart';
import 'package:maternalcare/widgets/questions.dart';

class Question_3 extends StatelessWidget {
  const Question_3({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Questions(
        question: "¿Te sientes acompañada en este proceso?",
        emoji: false,
        next: '/question_4',
        back: "/question_2",
      ),
    ));
  }
}
