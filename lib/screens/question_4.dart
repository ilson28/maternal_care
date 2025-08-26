import 'package:flutter/material.dart';
import 'package:maternalcare/widgets/questions.dart';

class Question_4 extends StatelessWidget {
  const Question_4({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Questions(
          question: "Como consideras que es tu estado de animo actual?",
          emoji: true),
    ));
  }
}
