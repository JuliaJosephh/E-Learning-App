import 'package:flutter/material.dart';

class DartProgrammingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Dart Programming page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}