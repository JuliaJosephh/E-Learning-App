import 'package:flutter/material.dart';

class PythonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Python page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}