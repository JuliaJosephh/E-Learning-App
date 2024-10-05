import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/IntrotoFlutterContent.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/FlutterIntroQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class IntroToFlutterPage extends StatelessWidget {
  const IntroToFlutterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: flutterContent, // Pass the content
      questions: FlutterQuestions, // Pass the questions
      title: 'Introduction to Flutter', // Pass the title
    );
  }
}
