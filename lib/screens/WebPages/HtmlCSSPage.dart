import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class HtmlCSSPage extends StatelessWidget {
  const HtmlCSSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('HTML & CSS', style: poppins.copyWith(fontSize: 14)),
      ),
      body: Center(
        child: Text(
          'Welcome to the HTML & CSS page!',
          style: poppins.copyWith(fontSize: 14)
        ),
      ),
    );
  }
}