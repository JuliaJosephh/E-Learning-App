import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/DartProgrammingContent.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/DartQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class DartProgrammingPage extends StatelessWidget {
  const DartProgrammingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: dartContent, // Pass the content
      questions: DartQuestions, // Pass the questions
      title: 'Dart', // Pass the title
    );
  }
}
