import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/constants/themeprovider.dart';
import 'package:sessiontask/constants/utils.dart';
import 'package:sessiontask/widgets/BuildProfile.dart';

class ProfilePage extends StatefulWidget {
  final String userId; // Pass the userId as a parameter

  const ProfilePage({super.key, required this.userId});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Uint8List? _image;

  @override
  void initState() {
    super.initState();
    loadImage(); // Load the image for the specific user when the page initializes
  }

  void selectimage() async {
    Uint8List img = await pickimage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
    await saveImage(img); // Save the image after it is selected
  }

  Future<void> saveImage(Uint8List image) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String base64Image = base64Encode(image);
    // Save the image using a key that includes the user's ID
    await prefs.setString('profile_image_${widget.userId}', base64Image);
  }

  Future<void> loadImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Load the image using the key that includes the user's ID
    String? base64Image = prefs.getString('profile_image_${widget.userId}');
    if (base64Image != null) {
      setState(() {
        _image = base64Decode(base64Image); // Decode Base64 to Uint8List
      });
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
                IconButton(
                  icon: Provider.of<ThemeProvider>(context).themeData == lightmode
                      ? const Icon(
                          Icons.nightlight_round,
                          color: Colors.black,
                          size: 30,
                        )
                      : const Icon(
                          Icons.sunny,
                          color: Colors.white,
                          size: 30,
                        ),
                  onPressed: () {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme();
                  },
                ),
                Center(
                  child: Column(
                    children: [
                      _image != null
                          ? CircleAvatar(
                              radius: 60,
                              backgroundImage: MemoryImage(_image!),
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
                                    onPressed: selectimage,
                                    icon: const Icon(
                                      Icons.add_a_photo,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      const SizedBox(height: 10),
                      Text(
                        'Julia Joseph',
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
          buildprofile(context),
        ],
      ),
    );
  }
}
