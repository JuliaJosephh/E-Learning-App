import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/emailcode.dart';
import 'package:sessiontask/screens/verifywnum.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  _ForgetpasswordState createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  final TextEditingController _emailController = TextEditingController();

  Future<void> _checkEmailAndSendCode(BuildContext context) async {
    String email = _emailController.text.trim();

    if (email.isEmpty) {
      // Show error if the email field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your email.')),
      );
      return;
    }

    try {
      // Check if the email exists in Firebase
      final signInMethods = await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
      if (signInMethods.isEmpty) {
        // If no sign-in methods are returned, the email does not exist
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Email does not exist.')),
        );
      } else {
        // Email exists; navigate to the verification page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Emailcode(), // Navigate to the email verification page
          ),
        );

        // Optionally, send a password reset code (uncomment if needed)
        // await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      }
    } catch (e) {
      // Handle any exceptions
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
            // Improved Row for Icon and TextField alignment
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        controller: _emailController, // Set the controller
                        decoration: InputDecoration(
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
              onPressed: () => _checkEmailAndSendCode(context), // Call the method
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(backgroundColor),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Send code",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "OR",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: InkWell(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Verifywnum()),
                  );
                },
                child: Text(
                  "Verify Using Number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: backgroundColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
