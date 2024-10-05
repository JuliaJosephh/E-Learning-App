import 'package:flutter/material.dart';
import 'package:sessiontask/Content/AIContent/PandasContent.dart';
import 'package:sessiontask/quizzes/AIQuizzes/PandasQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class PandasPage extends StatelessWidget {
  const PandasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: pandasContent, // Pass the content
      questions: pandasQuestions, // Pass the questions
      title: 'Pandas', // Pass the title
    );
  }
}
