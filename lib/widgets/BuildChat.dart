import 'package:flutter/material.dart';

@override
Widget BuildChat(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Profile page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    ),
  );
}
