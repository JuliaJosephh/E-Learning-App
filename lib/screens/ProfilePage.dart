import 'dart:convert';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/BuildProfile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Uint8List? _image;
  bool _imageExists = false;
  String _fullName = 'Loading...';
  int _points = 0; // Initialize points with a default value of 0

  Future<void> checkUserProfile() async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;

    if (uid == null) return; // User is not logged in

    // Fetch the user document from Firestore to check for an existing profile image and points
    DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.collection("User_Info").doc(uid).get();

    if (userDoc.exists) {
      var userData = userDoc.data() as Map<String, dynamic>;
      String? profileImage = userData['profileImageUrl'] as String?;
      String? fullName = userData['FullName'] as String?;
      int? points = userData['points'] as int?; // Get the points if available

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

      // Check and set Full Name
      if (fullName != null) {
        setState(() {
          _fullName = fullName; // Update the Full Name state variable
        });
      }

      // Check and set Points
      if (points != null) {
        setState(() {
          _points = points; // Update the Points state variable
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    checkUserProfile(); // Check user profile on initialization
  }

  void selectImage() async {
    // Prompt user to take a photo with the camera or pick from gallery
    final ImagePicker picker = ImagePicker();
    XFile? imageFile = await picker.pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      Uint8List img =
          await imageFile.readAsBytes(); // Read the selected image as bytes
      setState(() {
        _image = img; // Update the UI
        _imageExists = true; // Update the flag to indicate the image now exists
      });
      await saveImage(img); // Save the image after it is selected
      await uploadImageToFirestore(img); // Upload image to Firestore
    }
  }

  Future<void> uploadImageToFirestore(Uint8List image) async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;

    if (uid == null) {
      throw Exception("User is not logged in");
    }

    String base64Image = base64Encode(image);
    await FirebaseFirestore.instance.collection("User_Info").doc(uid).set({
      'profileImageUrl': base64Image, // Store base64 image string in Firestore
    }, SetOptions(merge: true)); // Merge to avoid overwriting other fields
  }

  Future<void> saveImage(Uint8List image) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String base64Image = base64Encode(image);
    String? uid = FirebaseAuth.instance.currentUser?.uid;

    if (uid != null) {
      // Save the image using a key that includes the user's Firebase ID
      await prefs.setString('profile_image_$uid', base64Image);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250.0),
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
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 50,
                 decoration: BoxDecoration(color: const Color.fromARGB(255, 8, 62, 155),borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.grey,width: .5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/trophy.png", scale: 16),
                      Text(
                        "$_points", // Display the points fetched from Firestore
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( top: 10.0),
                        child: Text("pt",style: TextStyle(color: Colors.white,fontSize: 10),),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      _imageExists // Check if the image exists
                          ? Stack(
                              children: [
                                CircleAvatar(
                                  radius: 60,
                                  backgroundImage: MemoryImage(_image!),
                                ),
                                Positioned(
                                  bottom: -10,
                                  right: -5,
                                  child: IconButton(
                                    onPressed:
                                        selectImage, // Change photo button
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Stack(
                              children: [
                                const CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                      AssetImage('images/user.png'),
                                  backgroundColor: Colors.white,
                                ),
                                Positioned(
                                  bottom: -10,
                                  right: -5,
                                  child: IconButton(
                                    onPressed:
                                        selectImage, // Call selectImage on press
                                    icon: const Icon(
                                      Icons.add_a_photo,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      const SizedBox(height: 10),
                      Text(
                        _fullName, // Display the fetched user's Full Name
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
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          const SizedBox(height: 10),
          buildprofile(context), // Your existing buildprofile function
        ],
      ),
    );
  }
}
