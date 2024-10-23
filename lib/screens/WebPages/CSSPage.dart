import 'package:flutter/material.dart';
import 'package:sessiontask/Content/webContent/CSSContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/WebQuizzes/CSSQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class CSSPage extends StatefulWidget {
  const CSSPage({super.key});

  @override
  State<CSSPage> createState() => _CSSPageState();
}

class _CSSPageState extends State<CSSPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: CSSContent,
      questions: CSSQuestions,
      title: 'CSS',
      currentPage: const CSSPage(),
      trackChosen: webDevChapters,
      language: 'CSS',
    );
  }
}
