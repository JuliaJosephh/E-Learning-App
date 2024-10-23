import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sessiontask/widgets/BuildAccountInfoRow.dart';

// Function to fetch user info from Firestore
Future<Map<String, String>> fetchUserInfo() async {
  // Get the current user's UID
  String? uid = FirebaseAuth.instance.currentUser?.uid;

  if (uid == null) {
    throw Exception("User is not logged in");
  }

  // Fetch the user document from Firestore
  DocumentSnapshot userDoc =
      await FirebaseFirestore.instance.collection("User_Info").doc(uid).get();

  if (userDoc.exists) {
    // Extract user info
    var userData = userDoc.data() as Map<String, dynamic>;
    return {
      'fullName': userData['FullName'] ?? 'Unknown',
      'username': userData['username'] ?? 'Unknown', // Fetching username
      'email': userData['email'] ?? 'Unknown',
      'mobileNumber': userData['mobileNumber'] ?? 'Unknown',
    };
  } else {
    throw Exception("User data not found");
  }
}

// Function to fetch enrolled courses from Firestore
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

// Widget to display account info
Widget AccountInfoBox() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: FutureBuilder<Map<String, String>>(
      future: fetchUserInfo(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          // User data retrieved successfully
          final userInfo = snapshot.data!;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildAccountInfoRow(
                    Icons.person, 'Full Name:', userInfo['fullName']!),
                const SizedBox(height: 10),
                buildAccountInfoRow(Icons.account_circle, 'Username:',
                    userInfo['username']!), // Changed to username
                const SizedBox(height: 10),
                buildAccountInfoRow(Icons.email, 'Email:', userInfo['email']!),
                const SizedBox(height: 10),
                buildAccountInfoRow(
                    Icons.phone, 'Mobile Number:', userInfo['mobileNumber']!),
                const SizedBox(height: 10),
                FutureBuilder<List<String>>(
                  future: getEnrolledCourses(),
                  builder: (BuildContext context, AsyncSnapshot<List<String>> courseSnapshot) {
                    if (courseSnapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (courseSnapshot.hasError) {
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
                        child: Text('Error: ${courseSnapshot.error}'),
                      );
                    } else if (!courseSnapshot.hasData || courseSnapshot.data!.isEmpty) {
                      return SizedBox(
                        width: 400,
                        child: Container(
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
                        ),
                      );
                    } else {
                      List<String> enrolledCourses = courseSnapshot.data!;
                      return SizedBox(
                        width: 400,
                        child: Container(
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
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          );
        }
      },
    ),
  );
}
