import 'package:flutter/material.dart';
import 'package:maternalcare/widgets/questions.dart';

class Question_1 extends StatelessWidget {
  const Question_1({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Questions(
          question: "Como consideras que es tu estado de animo actual?",
          emoji: true,
          next: "/question_2",
          back: "/user-progress"),
    ));
  }
}
