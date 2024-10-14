import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/LocalDataStorageContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/LocalDataStorage.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class LocalDataStoragePage extends StatefulWidget {
  const LocalDataStoragePage({super.key});

  @override
  State<LocalDataStoragePage> createState() => _LocalDataStoragePageState();
}

class _LocalDataStoragePageState extends State<LocalDataStoragePage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: localDataStorageContent,
      questions: localDataStorageQuestions,
      title: 'Local Data Storage',
      currentPage: const LocalDataStoragePage(),
      trackChosen: mobileDevChapters,
      language: 'Dart',
    );
  }
}
