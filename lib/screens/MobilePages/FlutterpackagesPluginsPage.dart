import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/PackagesPluginsContent.dart';
import 'package:sessiontask/Tracks/TracksChapters.dart';
import 'package:sessiontask/quizzes/FlutterQuizzes/PackagesPluginsQuestions.dart';
import 'package:sessiontask/screens/ContentPage.dart';

class FlutterpackagesPluginsPage extends StatefulWidget {
  const FlutterpackagesPluginsPage({super.key});

  @override
  State<FlutterpackagesPluginsPage> createState() =>
      _FlutterpackagesPluginsPageState();
}

class _FlutterpackagesPluginsPageState
    extends State<FlutterpackagesPluginsPage> {
  @override
  Widget build(BuildContext context) {
    return ContentPage(
      content: packagesAndPluginsContent,
      questions: packagesAndPluginsQuestions,
      title: 'Packages and Plugins',
      currentPage: const FlutterpackagesPluginsPage(),
      trackChosen: mobileDevChapters,
      language: 'Dart',
    );
  }
}
