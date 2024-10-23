import 'package:flutter/material.dart';
import 'package:sessiontask/Tracks/TracksEnrollment.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/BuildCourseBox.dart';

class BuildCoursePage extends StatefulWidget {
  const BuildCoursePage({super.key});

  @override
  _BuildCoursePageState createState() => _BuildCoursePageState();
}

class _BuildCoursePageState extends State<BuildCoursePage> {
  @override
  Widget build(BuildContext context) {
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
                children: courses.map((course) {
                  return Column(
                    children: [
                      BuildCourseBox(courses,
                          course: course), 
                      const SizedBox(height: 10),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
