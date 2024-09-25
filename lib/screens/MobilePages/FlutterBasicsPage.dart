import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class FlutterBasicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basics', style: poppins.copyWith(fontSize: 14)),
      ),
      body: Center(
        child: Text(
          'Welcome to the Flutter Basics page!',
           style: poppins.copyWith(fontSize: 14)
        ),
      ),
    );
  }
}
