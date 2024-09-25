import 'package:flutter/material.dart';

class HtmlCSSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the HTML & CSS page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}