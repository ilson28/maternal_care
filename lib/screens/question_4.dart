import 'package:flutter/material.dart';
import 'package:maternalcare/widgets/questions.dart';

class Question_4 extends StatelessWidget {
  const Question_4({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Questions(
        question: "¿Has realizado algún tipo de actividad ligera o ejercicio?",
        emoji: false,
        next: '/question_5',
        back: "/question_3",
      ),
    ));
  }
}
