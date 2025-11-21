import 'package:flutter/material.dart';
import 'package:maternalcare/presentation/widgets/questions.dart';


class Question_5 extends StatelessWidget {
  const Question_5({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Questions(
        question: "¿Has hablado con alguien sobre cómo te sientes?",
        emoji: false,
        next: "/answer",
        back: "/question_4",
      ),
    ));
  }
}
