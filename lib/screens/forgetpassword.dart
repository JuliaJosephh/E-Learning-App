import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:sessiontask/screens/LoginPage.dart'; // Import Awesome Dialog


class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  _ForgetpasswordState createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  final TextEditingController _emailController = TextEditingController();

  Future<bool> checkEmailExists(String email) async {
    final QuerySnapshot result = await FirebaseFirestore.instance
        .collection('User_Info') // Change this to your collection name
        .where('email', isEqualTo: email)
        .get();

    return result.docs.isNotEmpty; // Returns true if any document exists
  }

  Future<void> _checkEmailAndSendReset(BuildContext context) async {
    String email = _emailController.text.trim().toLowerCase();

    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your email.')),
      );
      return;
    }

    try {
      // Check if the email exists in Firestore
      bool exists = await checkEmailExists(email);

      if (exists) {
        // Email exists; send password reset email
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);

        // Show dialog to inform the user
        AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.scale,
          title: 'Email Sent',
          desc: 'A password reset link has been sent to your email.',
          btnOkOnPress: () {
            // Navigate to the login page when OK is pressed
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Login()), // Navigate to your Login page
            );
          },
        ).show();
      } else {
        // If no documents were found, the email does not exist
        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          animType: AnimType.scale,
          title: 'Email Not Found',
          desc: 'The email you entered does not exist in our records.',
         
        ).show();
      }
    } catch (e) {
      print("Error checking email: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Forget Password",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Please enter your email address. You will receive a link to set a new password via email.",
              maxLines: 2,
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(Icons.email, color: Colors.black),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => _checkEmailAndSendReset(context),
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(backgroundColor),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Send code",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
