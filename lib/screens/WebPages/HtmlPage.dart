import 'package:flutter/material.dart';
import 'package:sessiontask/Content/webContent/HTMLContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/WebQuizzes/HTMLQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class HTMLPage extends StatefulWidget {
  const HTMLPage({super.key});

  @override
  State<HTMLPage> createState() => _HTMLPageState();
}

class _HTMLPageState extends State<HTMLPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: htmlContent,
      questions: HTMLQuestions,
      title: 'HTML',
      currentPage: const HTMLPage(),
      trackChosen: webDevChapters,
      language: 'HTML',
    );
  }
}
