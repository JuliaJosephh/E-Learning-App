import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/LocalDataStorageContent.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/LocalDataStorage.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class LocalDataStoragePage extends StatelessWidget {
  const LocalDataStoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContentPage(
      content: localDataStorageContent, // Pass the content
      questions: localDataStorageQuestions, // Pass the questions
      title: 'Local Data Storage', // Pass the title
    );
  }
}
