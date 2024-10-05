import 'package:flutter/material.dart';
import 'package:sessiontask/Content/webContent/CSSContent.dart';
import 'package:sessiontask/quizzes/WebQuizzes/CSSQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class CSSPage extends StatelessWidget {
  const CSSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: CSSContent, // Pass the content
      questions: CSSQuestions, // Pass the questions
      title: 'CSS', // Pass the title
    );
  }
}
