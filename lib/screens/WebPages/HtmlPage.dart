import 'package:flutter/material.dart';
import 'package:sessiontask/Content/webContent/HTMLContent.dart';
import 'package:sessiontask/quizzes/WebQuizzes/HTMLQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class HTMLPage extends StatelessWidget {
  const HTMLPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: htmlContent, // Pass the content
      questions: HTMLQuestions, // Pass the questions
      title: 'HTML', // Pass the title
    );
  }
}
