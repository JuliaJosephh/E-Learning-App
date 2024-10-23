import 'package:flutter/material.dart';
import 'package:sessiontask/Content/AIContent/NumPyContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/AIQuizzes/NumPyQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class NumPyPage extends StatefulWidget {
  const NumPyPage({super.key});

  @override
  State<NumPyPage> createState() => _NumPyPageState();
}

class _NumPyPageState extends State<NumPyPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: NumPyContent,
      questions: NumPyQuestions,
      title: 'NumPy',
      currentPage: const NumPyPage(),
      trackChosen: aiChapters,
      language: 'Python',
    );
  }
}
