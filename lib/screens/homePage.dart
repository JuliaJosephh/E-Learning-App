import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/BuildCoursePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _username = 'Loading...';

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;

    if (uid != null) {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection("User_Info")
          .doc(uid)
          .get();
      if (userDoc.exists) {
        var userData = userDoc.data() as Map<String, dynamic>;
        String? username = userData['username']; // Get username

        setState(() {
          _username = username ?? 'User'; // Default to 'User' if username is null
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      backgroundImage: const AssetImage('images/user.png'), // Use static user.png
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Hi, $_username!', // Display the fetched username
                      style: poppins.copyWith(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(width: 5),
                    Transform.scale(
                      scale: 0.7,
                      child: Icon(
                        Icons.waving_hand,
                        color: WavingHandColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Let's start the journey!",
                  style: poppins.copyWith(fontSize: 10, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      prefixIcon: Icon(Icons.search, color: GreySearchColor),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: const BuildCoursePage(),
    );
  }
}
