import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class FrontEndPage extends StatelessWidget {
  const FrontEndPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frontend', style: poppins.copyWith(fontSize: 14)),
      ),
      body: Center(
        child: Text(
          'Welcome to the Frontend page!',
          style: poppins.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}