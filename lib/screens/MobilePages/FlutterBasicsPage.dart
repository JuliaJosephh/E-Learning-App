import 'package:flutter/material.dart';

class FlutterBasicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Flutter Basics page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
