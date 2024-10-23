import 'dart:convert';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/AccountInfoBox.dart';

class AccountInfoPage extends StatefulWidget {
  const AccountInfoPage({super.key});

  @override
  State<AccountInfoPage> createState() => _AccountInfoPageState();
}

class _AccountInfoPageState extends State<AccountInfoPage> {
  Uint8List? _image;
  bool _imageExists = false;

  @override
  void initState() {
    super.initState();
    _fetchProfileImage();
  }

  Future<void> _fetchProfileImage() async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;

    if (uid == null) return; // User is not logged in

    DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.collection("User_Info").doc(uid).get();

    if (userDoc.exists) {
      var userData = userDoc.data() as Map<String, dynamic>;
      String? profileImage = userData['profileImageUrl'] as String?;

      if (profileImage != null && profileImage.isNotEmpty) {
        try {
          setState(() {
            _image = base64Decode(profileImage);
            _imageExists = true;
          });
        } catch (e) {
          print('Error decoding profile image: $e');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
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
            child: Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: _imageExists
                    ? MemoryImage(_image!)
                    : const AssetImage('images/user.png') as ImageProvider,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: AccountInfoBox(),
    );
  }
}
