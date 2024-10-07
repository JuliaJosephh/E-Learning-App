
import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class NumPyPage extends StatelessWidget {
  const NumPyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('NumPy',
            style: poppins.copyWith(fontSize: 14, color: Colors.white)),
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Text('Welcome to the NumPy page!',
            style: poppins.copyWith(fontSize: 14)),
      ),
    );
  }
}
