import 'package:flutter/material.dart';
import 'package:sessiontask/Content/webContent/JavaScriptContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/WebQuizzes/JavaScriptQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class JavaScriptPage extends StatefulWidget {
  const JavaScriptPage({super.key});

  @override
  State<JavaScriptPage> createState() => _JavaScriptPageState();
}

class _JavaScriptPageState extends State<JavaScriptPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: JSContent,
      questions: JSQuestions,
      title: 'JavaScript',
      currentPage: const JavaScriptPage(),
      trackChosen: webDevChapters,
      language: 'JavaScript',
    );
  }
}
