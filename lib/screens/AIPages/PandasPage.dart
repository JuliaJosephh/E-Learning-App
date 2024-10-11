import 'package:flutter/material.dart';
import 'package:sessiontask/Content/AIContent/PandasContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/AIQuizzes/PandasQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class PandasPage extends StatefulWidget {
  const PandasPage({super.key});

  @override
  State<PandasPage> createState() => _PandasPageState();
}

class _PandasPageState extends State<PandasPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: pandasContent, 
      questions: pandasQuestions, 
      title: 'Pandas',
      currentPage: const PandasPage(), 
      trackChosen: aiChapters, 
      language: 'Python',
    );
  }
}
