import 'package:flutter/material.dart';

  Widget BuildChat(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Chat page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
