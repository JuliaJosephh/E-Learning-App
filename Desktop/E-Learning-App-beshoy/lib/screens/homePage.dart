import 'package:flutter/material.dart';
import 'package:sessiontask/widgets/AppBars/HomeAppBar.dart';
import 'package:sessiontask/widgets/BuildCoursePage.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildhomeappbar(context), 
      body: BuildCoursePage(context), 
    );
  }
}
