import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sessiontask/constants/constants.dart';

Future<String> fetchUserImageUrl() async {
  // Get the current user's UID
  String? uid = FirebaseAuth.instance.currentUser?.uid;

  if (uid == null) {
    throw Exception("User is not logged in");
  }

  // Fetch the user document from Firestore
  DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection("User_Info").doc(uid).get();

  if (userDoc.exists) {
    // Extract and return the image URL
    var userData = userDoc.data() as Map<String, dynamic>;
    return userData['ImageUrl'] ?? 'images/user.png'; // Provide a default image path if ImageUrl is not available
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
          future: fetchUserImageUrl(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              // Image URL retrieved successfully
              final imageUrl = snapshot.data!;
              return Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: imageUrl.isNotEmpty
                      ? NetworkImage(imageUrl)
                      : const AssetImage('images/user.png') as ImageProvider,
                  backgroundColor: Colors.white,
                ),
              );
            }
          },
        ),
      ),
    ),
  );
}
