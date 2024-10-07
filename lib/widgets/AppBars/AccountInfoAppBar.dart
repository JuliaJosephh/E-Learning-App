import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sessiontask/constants/constants.dart';

Future<String> fetchUserFullName() async {
  // Get the current user's UID
  String? uid = FirebaseAuth.instance.currentUser?.uid;

  if (uid == null) {
    throw Exception("User is not logged in");
  }

  // Fetch the user document from Firestore
  DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection("User_Info").doc(uid).get();

  if (userDoc.exists) {
    // Extract and return the full name
    var userData = userDoc.data() as Map<String, dynamic>;
    return userData['FullName'] ?? 'Unknown';
  } else {
    throw Exception("User data not found");
  }
}

PreferredSizeWidget BuildAccountInfoAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(250.0),
    child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: FutureBuilder<String>(
          future: fetchUserFullName(), // Call the fetch method here
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              // Full name retrieved successfully
              final fullName = snapshot.data!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          fullName, // Use the fetched full name here
                          style: poppins.copyWith(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    ),
  );
}
