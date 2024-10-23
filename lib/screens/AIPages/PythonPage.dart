import 'package:flutter/material.dart';
import 'package:sessiontask/Content/AIContent/PythonbasicsContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/AIQuizzes/PythonBasicsQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class PythonPage extends StatefulWidget {
  const PythonPage({super.key});

  @override
  State<PythonPage> createState() => _PythonPageState();
}

class _PythonPageState extends State<PythonPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: pythonBasicsContent, 
      questions: PythonQuestions,
      title: 'Python',
      currentPage: const PythonPage(),
       trackChosen: aiChapters, 
       language: 'Python', 
    );
  }
}
