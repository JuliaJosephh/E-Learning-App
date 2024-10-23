import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/BuildButtonLocked.dart';

class CourseDetailsPage extends StatefulWidget {
  final String courseTitle;
  final List<Map<String, dynamic>> chapters;

  const CourseDetailsPage({
    super.key,
    required this.courseTitle,
    required this.chapters,
  });

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.courseTitle,
          style: poppins.copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
   
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Course Chapters List",
                    style: poppins.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 25),
                  for (var chapter in widget.chapters)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: LockedButton(
                          pointNum: chapter['index'],
                          pointDes: chapter['title'],
                          locked: chapter['isLocked'],
                          page: chapter['Page'],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
