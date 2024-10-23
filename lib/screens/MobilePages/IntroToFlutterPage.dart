import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/IntrotoFlutterContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/FlutterIntroQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class IntroToFlutterPage extends StatefulWidget {
  const IntroToFlutterPage({super.key});

  @override
  State<IntroToFlutterPage> createState() => _IntroToFlutterPageState();
}

class _IntroToFlutterPageState extends State<IntroToFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: flutterContent,
      questions: FlutterQuestions,
      title: 'Introduction to Flutter',
      currentPage: const IntroToFlutterPage(),
      trackChosen: mobileDevChapters,
      language: 'Dart',
    );
  }
}
