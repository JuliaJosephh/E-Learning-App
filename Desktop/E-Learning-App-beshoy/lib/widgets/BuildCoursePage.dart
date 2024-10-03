import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/BuildCourseBox.dart';
import '../Tracks/TracksChapters.dart';

Widget BuildCoursePage(BuildContext context) {
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
              color: Colors.white,
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
