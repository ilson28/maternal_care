import 'package:flutter/material.dart';

import 'package:maternalcare/presentation/pages/answer.dart';
import 'package:maternalcare/presentation/pages/answer_saved.dart';
import 'package:maternalcare/presentation/pages/chatScreen.dart';
import 'package:maternalcare/presentation/pages/congratsScreen.dart';
import 'package:maternalcare/presentation/pages/login.dart';
import 'package:maternalcare/presentation/pages/profile.dart';
import 'package:maternalcare/presentation/pages/question_1.dart';
import 'package:maternalcare/presentation/pages/question_2.dart';
import 'package:maternalcare/presentation/pages/question_3.dart';
import 'package:maternalcare/presentation/pages/question_4.dart';
import 'package:maternalcare/presentation/pages/question_5.dart';
import 'package:maternalcare/presentation/pages/signup.dart';
import 'package:maternalcare/presentation/pages/userProgress.dart';
import 'package:maternalcare/presentation/pages/videosSection.dart';
import 'package:maternalcare/presentation/pages/welcome.dart';
import 'package:maternalcare/presentation/widgets/alert.dart';
import 'package:maternalcare/presentation/widgets/whiteBox.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Maternal care',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      // Definimos rutas
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        // "/": (context) => const TermsDialog(),
        "/modal_alert": (context) => AnomaliaModal(),
        "/answer-saved": (context) => const AnswerSaved(),
        "/answer": (context) => Answer(),
        "/library": (context) => const WhiteBox(),
        "/login": (context) => const Login(),
        "/signup": (context) => const Signup(),
        "/profile": (context) => const Profile(),
        "/user-progress": (context) => const UserProgress(),
        "/congrats": (context) => const CongratsScreen(),
        "/chat": (context) => const ChatScreen(),
        "/library_videos": (context) => const VideosSection(),
        "/question_1": (context) => const Question_1(),
        "/question_2": (context) => const Question_2(),
        "/question_3": (context) => const Question_3(),
        "/question_4": (context) => const Question_4(),
        "/question_5": (context) => const Question_5(),
      },
    );
  }
}
