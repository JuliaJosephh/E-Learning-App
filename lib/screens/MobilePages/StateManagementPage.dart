import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/StateManagementContent.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/StateManagementQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class StateManagementPage extends StatelessWidget {
  const StateManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: stateManagementContent, // Pass the content
      questions: stateManagementQuestions, // Pass the questions
      title: 'State Management', // Pass the title
    );
  }
}

