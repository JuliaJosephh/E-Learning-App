import 'package:flutter/material.dart';

class JavaScript extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the JavaScript page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
