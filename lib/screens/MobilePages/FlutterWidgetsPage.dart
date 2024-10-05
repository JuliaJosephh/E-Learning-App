import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/FlutterWidgetsContent.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/FlutterWidgetsQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class FlutterWidgetsPage extends StatelessWidget {
  const FlutterWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: flutterWidgetsContent, // Pass the content
      questions: FlutterWidgetsQuestions, // Pass the questions
      title: 'Flutter Widgets', // Pass the title
    );
  }
}
