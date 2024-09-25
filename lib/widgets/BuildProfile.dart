import 'package:flutter/material.dart';

  @override
  Widget BuildProfile(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Profile page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
