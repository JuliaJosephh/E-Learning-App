import 'package:flutter/material.dart';
import 'package:sessiontask/Content/AIContent/NumPyContent.dart';
import 'package:sessiontask/quizzes/AIQuizzes/NumPyQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class NumPyPage extends StatelessWidget {
  const NumPyPage({super.key});
  
@override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: NumPyContent, // Pass the content
      questions: NumPyQuestions, // Pass the questions
      title: 'NumPy', // Pass the title
    );
  }
}
