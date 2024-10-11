import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/FlutterWidgetsContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/FlutterWidgetsQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class FlutterWidgetsPage extends StatefulWidget {
  const FlutterWidgetsPage({super.key});

  @override
  State<FlutterWidgetsPage> createState() => _FlutterWidgetsPageState();
}

class _FlutterWidgetsPageState extends State<FlutterWidgetsPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: flutterWidgetsContent, 
      
      questions: FlutterWidgetsQuestions, 
      
      title: 'Flutter Widgets',
      currentPage: const FlutterWidgetsPage(),
      trackChosen: mobileDevChapters, 
      language: 'Dart', 
      
    );
  }
}
