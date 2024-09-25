import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class PythonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python', style: poppins.copyWith(fontSize: 14)),
      ),
      body: Center(
        child: Text('Welcome to the Python page!',
            style: poppins.copyWith(fontSize: 14)),
      ),
    );
  }
}
