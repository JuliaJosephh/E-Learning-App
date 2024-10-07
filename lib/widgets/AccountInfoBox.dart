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
  DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection("User_Info").doc(uid).get();

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
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAccountInfoRow(Icons.person, 'Full Name:', userInfo['fullName']!),
              const SizedBox(height: 10),
              buildAccountInfoRow(Icons.account_circle, 'Username:', userInfo['username']!), // Changed to username
              const SizedBox(height: 10),
              buildAccountInfoRow(Icons.email, 'Email:', userInfo['email']!),
              const SizedBox(height: 10),
              buildAccountInfoRow(Icons.phone, 'Mobile Number:', userInfo['mobileNumber']!),
            ],
          );
        }
      },
    ),
  );
}
