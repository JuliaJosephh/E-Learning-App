import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/NavigationContent.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/NavigationQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';


class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: navigationContent, // Pass the content
      questions: navigationQuestions, // Pass the questions
      title: 'Navigation', // Pass the title
    );
  }
}
