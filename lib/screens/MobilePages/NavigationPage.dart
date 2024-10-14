import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/NavigationContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/NavigationQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: navigationContent,
      questions: navigationQuestions,
      title: 'Navigation',
      currentPage: const NavigationPage(),
      trackChosen: mobileDevChapters,
      language: 'Dart',
    );
  }
}
