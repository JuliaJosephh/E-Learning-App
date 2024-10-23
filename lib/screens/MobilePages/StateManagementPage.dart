import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/StateManagementContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/StateManagementQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class StateManagementPage extends StatefulWidget {
  const StateManagementPage({super.key});

  @override
  State<StateManagementPage> createState() => _StateManagementPageState();
}

class _StateManagementPageState extends State<StateManagementPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: stateManagementContent,
      questions: stateManagementQuestions,
      title: 'State Management',
      currentPage: const StateManagementPage(),
      trackChosen: mobileDevChapters,
      language: 'Dart',
    );
  }
}
