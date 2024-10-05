import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/PackagesPluginsContent.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/PackagesPluginsQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class FlutterpackagesPluginsPage extends StatelessWidget {
  const FlutterpackagesPluginsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: packagesAndPluginsContent, // Pass the content
      questions: packagesAndPluginsQuestions, // Pass the questions
      title: 'Packages and Plugins', // Pass the title
    );
  }
}
