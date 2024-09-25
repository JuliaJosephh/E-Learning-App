import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/CoursesPage.dart';

Widget buildCourseBox(
    BuildContext context, String courseTitle, String imageUrl) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white, // Change to white for better contrast
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imageUrl,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          courseTitle,
          style: poppins.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CourseDetailsPage(courseTitle: courseTitle),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            minimumSize: const Size(80, 30),
          ),
          child: Text(
            "Show Details",
            style: poppins.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            )
          ),
        ),
      ],
    ),
  );
}
