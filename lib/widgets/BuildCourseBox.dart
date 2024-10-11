import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/CourseDetailsPage.dart';
import 'package:sessiontask/screens/ShowDetailsScreen.dart';

// CourseBox StatefulWidget
class BuildCourseBox extends StatefulWidget {
  final Map<String, dynamic> course;

  const BuildCourseBox(List<Map<String, dynamic>> courses,
      {super.key, required this.course});

  @override
  _BuildCourseBoxState createState() => _BuildCourseBoxState();
}

class _BuildCourseBoxState extends State<BuildCourseBox> {
  bool isEnrolled = false;

  @override
  void initState() {
    super.initState();
    checkEnrollmentStatus(); // Check the enrollment status when the widget initializes
  }

  Future<void> checkEnrollmentStatus() async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;

    try {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection("User_Info")
          .doc(uid)
          .get();

      if (userDoc.exists) {
        List<dynamic>? enrolledCourses =
            userDoc.get('enrolled_courses') as List<dynamic>?;

        if (enrolledCourses != null &&
            enrolledCourses.contains(widget.course['title'])) {
          setState(() {
            isEnrolled = true; // Update the state to indicate the course is enrolled
          });
        }
      }
    } catch (e) {
      print('Error checking enrollment status: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Extract course details
    String courseTitle = widget.course['title'];
    String imageUrl = widget.course['imageUrl'];
    List<Map<String, dynamic>> chapters = widget.course['chapters'];

    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
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
              height: 130,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  courseTitle,
                  style: poppins.copyWith(
                      fontSize: 14, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TrackDetailsPage(courseTitle: courseTitle),
                    ),
                  );
                },
                child: Text(
                  "Show Details",
                  style: poppins.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (isEnrolled) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CourseDetailsPage(
                        courseTitle: courseTitle, chapters: chapters),
                  ),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Confirm Enrollment'),
                      content: Text(
                          'Are you sure you want to enroll in "$courseTitle"?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('No'),
                        ),
                        TextButton(
                          onPressed: () async {
                            // Update enrollment status and Firestore
                            await enrollInCourse(courseTitle);
                            setState(() {
                              isEnrolled = true;
                            });
                            Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CourseDetailsPage(
                                    courseTitle: courseTitle,
                                    chapters: chapters),
                              ),
                            );
                          },
                          child: const Text('Yes'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            ),
            child: Text(
              isEnrolled ? "Dive Deeper into Course" : "Enroll Now",
              style: poppins.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> enrollInCourse(String courseTitle) async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return;

    try {
      DocumentReference userDoc =
          FirebaseFirestore.instance.collection("User_Info").doc(uid);

      await userDoc.set({
        'enrolled_courses': FieldValue.arrayUnion([courseTitle])
      }, SetOptions(merge: true));
    } catch (e) {
      print('Error enrolling in course: $e');
    }
  }
}
