// Course Details Page
import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class CourseDetailsPage extends StatelessWidget {
  final String courseTitle;

  const CourseDetailsPage({super.key, required this.courseTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Colors.white, size: 24),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          courseTitle,
          style: poppins.copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Details about $courseTitle',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
