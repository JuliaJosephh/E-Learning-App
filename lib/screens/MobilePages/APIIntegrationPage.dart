import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/APIIntegrationContent.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/APIIntegrationQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class APIIntegrationPage extends StatelessWidget {
  const APIIntegrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: apiIntegrationContent, // Pass the content
      questions: apiIntegrationQuestions, // Pass the questions
      title: 'API Integration', // Pass the title
    );
  }
}
