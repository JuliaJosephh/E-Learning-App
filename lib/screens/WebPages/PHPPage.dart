import 'package:flutter/material.dart';
import 'package:sessiontask/Content/webContent/PHPContent.dart';
import 'package:sessiontask/quizzes/WebQuizzes/PHPQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class PHPPage extends StatelessWidget {
  const PHPPage({super.key});

@override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: phpContent, // Pass the content
      questions: PHPQuestions, // Pass the questions
      title: 'PHP', // Pass the title
    );
  }
}
