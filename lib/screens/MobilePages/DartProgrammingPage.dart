import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/DartProgrammingContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/DartQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class DartProgrammingPage extends StatefulWidget {
  const DartProgrammingPage({super.key});

  @override
  State<DartProgrammingPage> createState() => _DartProgrammingPageState();
}

class _DartProgrammingPageState extends State<DartProgrammingPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: dartContent,
      questions: DartQuestions,
      title: 'Dart',
      currentPage: const DartProgrammingPage(),
      trackChosen: mobileDevChapters,
      language: 'Dart',
    );
  }
}
