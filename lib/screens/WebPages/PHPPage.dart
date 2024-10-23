import 'package:flutter/material.dart';
import 'package:sessiontask/Content/webContent/PHPContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/WebQuizzes/PHPQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class PHPPage extends StatefulWidget {
  const PHPPage({super.key});

  @override
  State<PHPPage> createState() => _PHPPageState();
}

class _PHPPageState extends State<PHPPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: phpContent,
      questions: PHPQuestions,
      title: 'PHP',
      currentPage: const PHPPage(),
      trackChosen: webDevChapters,
      language: 'PHP',
    );
  }
}
