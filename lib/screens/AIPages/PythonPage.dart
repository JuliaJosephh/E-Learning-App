import 'package:flutter/material.dart';
import 'package:sessiontask/Content/AIContent/PythonbasicsContent.dart';
import 'package:sessiontask/quizzes/AIQuizzes/PythonBasicsQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class PythonPage extends StatelessWidget {
  const PythonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: pythonBasicsContent, // Pass the content
      questions: PythonQuestions, // Pass the questions
      title: 'Python', // Pass the title
    );
  }
}
