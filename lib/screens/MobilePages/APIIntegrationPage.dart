import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/APIIntegrationContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/APIIntegrationQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class APIIntegrationPage extends StatefulWidget {
  const APIIntegrationPage({super.key});

  @override
  State<APIIntegrationPage> createState() => _APIIntegrationPageState();
}

class _APIIntegrationPageState extends State<APIIntegrationPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: apiIntegrationContent,
      questions: apiIntegrationQuestions,
      title: 'API Integration',
      currentPage: const APIIntegrationPage(),
      trackChosen: mobileDevChapters,
      language: 'Dart',
    );
  }
}
