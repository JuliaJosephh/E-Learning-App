import 'package:flutter/material.dart';

class NumPyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the NumPy page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}