import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/AccountInfoPage.dart';
import 'package:sessiontask/screens/DefaultScreen.dart';
import 'package:sessiontask/screens/loginPage.dart';
import 'package:sessiontask/widgets/BuildProfileButtons.dart';

Widget buildprofile(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      const SizedBox(height: 10),
      buildprofilebutton(
        context,
        "Account Info",
        Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
        Icon(Icons.assignment_ind_rounded, color: IconColor),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AccountInfoPage()));
        },
      ),
      const SizedBox(height: 20),
      buildprofilebutton(
        context,
        "Courses Details",
        Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
        Icon(Icons.density_small_sharp, color: IconColor),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DefaultScreen()),
          );
        },
      ),
      const SizedBox(height: 20),
      buildprofilebutton(
        context,
        "Logout",
        Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
        Icon(Icons.logout_outlined, color: IconColor),
        onPressed: () async {
          await FirebaseAuth.instance.signOut();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Login()),
          );
        },
      ),
      const SizedBox(height: 20),
      FutureBuilder<List<String>>(
        future: getEnrolledCourses(),
        builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Text(
                "Enrolled Courses: None",
                style: TextStyle(fontSize: 16),
              ),
            );
          } else {
            List<String> enrolledCourses = snapshot.data!;
            return Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
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
                  const Text("Enrolled Courses:", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  for (var course in enrolledCourses)
                    Text(
                      '• $course',
                      style: const TextStyle(fontSize: 14),
                    ),
                ],
              ),
            );
          }
        },
      ),
    ],
  );
}

Future<List<String>> getEnrolledCourses() async {
  String? uid = FirebaseAuth.instance.currentUser?.uid;
  if (uid == null) return []; // Return empty if user is not logged in

  try {
    DocumentSnapshot userDoc = await FirebaseFirestore.instance
        .collection("User_Info")
        .doc(uid)
        .get();

    if (userDoc.exists && userDoc.data() != null) {
      List<dynamic>? enrolledCourses =
          userDoc.get('enrolled_courses') as List<dynamic>?;
      return enrolledCourses?.cast<String>() ?? [];
    } else {
      print('User document does not exist or is empty.');
    }
  } catch (e) {
    print('Error fetching enrolled courses: $e');
  }

  return []; // Return empty list on error
}
