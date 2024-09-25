import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class JavaScript extends StatelessWidget {
  const JavaScript({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JavaScript', style: poppins.copyWith(fontSize: 14)),
      ),
      body: Center(
        child: Text(
          'Welcome to the JavaScript page!',
           style: poppins.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}
