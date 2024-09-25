import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class BackEndPage extends StatelessWidget {
  const BackEndPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Backend', style: poppins.copyWith(fontSize: 14)),
      ),
      body: Center(
        child: Text(
          'Welcome to the Backend page!',
          style: poppins.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}
