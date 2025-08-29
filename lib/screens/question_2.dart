import 'package:flutter/material.dart';
import 'package:maternalcare/widgets/questions.dart';

class Question_2 extends StatelessWidget {
  const Question_2({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Questions(
          question: "¿Has presentado náuseas, vómitos o mareos hoy?",
          emoji: false,
          next: '/question_3',
          back: "/question_1"),
    ));
  }
}
