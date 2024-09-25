import 'package:flutter/material.dart';

class BackEndPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Backend page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
