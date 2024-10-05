import 'package:flutter/material.dart';
import 'package:sessiontask/Content/webContent/JavaScriptContent.dart';
import 'package:sessiontask/quizzes/WebQuizzes/JavaScriptQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class JavaScriptPage extends StatelessWidget {
  const JavaScriptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: JSContent, // Pass the content
      questions: JSQuestions, // Pass the questions
      title: 'JavaScript', // Pass the title
    );
  }
}
