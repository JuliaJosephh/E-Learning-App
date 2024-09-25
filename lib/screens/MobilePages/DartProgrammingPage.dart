import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class DartProgrammingPage extends StatelessWidget {
  const DartProgrammingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dart programming',style: poppins.copyWith(fontSize: 14)),
      ),
      body:  Center(
        child: Text(
          'Welcome to the Dart Programming page!',
          style: poppins.copyWith(fontSize: 14)
        ),
      ),
    );
  }
}