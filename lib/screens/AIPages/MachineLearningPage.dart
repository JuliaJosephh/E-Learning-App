import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class MachineLearningPage extends StatelessWidget {
  const MachineLearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Machine Learning', style: poppins.copyWith(fontSize: 14)),
      ),
      body: Center(
        child: Text('Welcome to the Machine Learning page!',
            style: poppins.copyWith(fontSize: 14)),
      ),
    );
  }
}
