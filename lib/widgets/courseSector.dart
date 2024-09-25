import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/CourseBox.dart';

Widget buildCourseSection(BuildContext context) {
  // Define the chapters for each course
  final List<Map<String, dynamic>> aiChapters = [
    {'index': 1, 'title': 'Python', 'isLocked': false},
    {'index': 2, 'title': 'Python libraries: Pandas', 'isLocked': true},
    {'index': 3, 'title': 'Python libraries: NumPy', 'isLocked': true},
    {'index': 4, 'title': 'Machine Learning', 'isLocked': true}
  ];

  final List<Map<String, dynamic>> webDevChapters = [
    {'index': 1, 'title': 'HTML & CSS Basics', 'isLocked': false},
    {'index': 2, 'title': 'JavaScript Basics', 'isLocked': true},
    {'index': 3, 'title': 'FrontEnd', 'isLocked': true},
    {'index': 4, 'title': 'BackEnd', 'isLocked': true}
  ];

  final List<Map<String, dynamic>> mobileDevChapters = [
    {'index': 1, 'title': 'Flutter Basics', 'isLocked': false},
    {'index': 2, 'title': 'Dart Programming', 'isLocked': true},
    {'index': 3, 'title': 'Building Android Apps', 'isLocked': true},
  ];

  return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Courses",
            style: poppins.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: GreyBoxColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                // Each course box navigates to its details with corresponding chapters
                buildCourseBox(
                  context,
                  'Artificial Intelligence',
                  'images/Artificial_Intelligence.jpg',
                  aiChapters, // Pass AI chapters
                ),
                const SizedBox(height: 10),
                buildCourseBox(
                  context,
                  'Web Development',
                  'images/Web_Development.jpg',
                  webDevChapters, // Pass Web Development chapters
                ),
                const SizedBox(height: 10),
                buildCourseBox(
                  context,
                  'Mobile Development',
                  'images/Mobile_Development.jpg',
                  mobileDevChapters, // Pass Mobile Development chapters
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
