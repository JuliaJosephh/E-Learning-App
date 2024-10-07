import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/DefaultScreen.dart';
import 'package:sessiontask/screens/LoginPage.dart';
import 'package:sessiontask/widgets/BuildGenderSelection.dart';
import 'package:sessiontask/widgets/BuildPasswordField.dart';
import 'package:sessiontask/widgets/BuildTermsAndConditions.dart';
import 'package:sessiontask/widgets/BuildTextField.dart';
import 'package:sessiontask/widgets/platforms.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool checked = false;
  String? selectedGender;
  final _formKey = GlobalKey<FormState>();

  // Text editing controllers
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _phonecontroller = TextEditingController();
  final TextEditingController _gendercontroller = TextEditingController();

 Future<void> _signUp() async {
  if (!_formKey.currentState!.validate()) {
    return; // If form is not valid, don't proceed
  }

  if (!checked) {
    debugPrint("Terms is not checked");
    return;
  }

  String errorMessage = 'An unknown error occurred.';
  try {
    // Sign up with FirebaseAuth
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    );

    // If sign-up is successful, store user information in Firestore
    CollectionReference collref = FirebaseFirestore.instance.collection("User_Info");
    await collref.add({
      "FullName": _fullNameController.text,  // Using .text to get the value
      "username": _usernameController.text,
      "email": _emailController.text,
      "gender": _gendercontroller.text,
      "mobileNumber": _phonecontroller.text,
      "password": _passwordController.text,  // Consider hashing passwords for security
    });

    // Navigate to DefaultScreen on successful sign-up
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DefaultScreen(),
      ),
    );
  } on FirebaseAuthException catch (e) {
    // FirebaseAuth-specific error handling
    if (e.code == 'weak-password') {
      errorMessage = 'The password provided is too weak.';
    } else if (e.code == 'email-already-in-use') {
      errorMessage = 'The account already exists for that email.';
    }
    _showErrorDialog(errorMessage);
  } catch (e) {
    // General error handling
    print(e);
    errorMessage = 'An error occurred: $e';
    _showErrorDialog(errorMessage);
  }
}

// Helper function to show error dialog
void _showErrorDialog(String errorMessage) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.error,
    animType: AnimType.rightSlide,
    title: 'Error',
    desc: errorMessage,
  ).show();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Create Account",
                  textAlign: TextAlign.center,
                  style: poppins.copyWith(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Enter your details and let's get you in",
                  textAlign: TextAlign.center,
                  style: poppins.copyWith(fontSize: 12),
                ),
                const SizedBox(height: 40),
                // First Name
                CustomTextField(
                  label: "Full Name:",
                  controller: _fullNameController,
                  hint: "Full Name",
                ),

                const SizedBox(height: 20),
                // Username
                CustomTextField(
                  label: "User Name:",
                  controller: _usernameController,
                  hint: "User Name",
                ),
                const SizedBox(height: 20),
                // Username
                CustomTextField(
                  label: " Phone Number:",
                  controller: _phonecontroller,
                  hint: "Phone Number",
                ),
                const SizedBox(height: 20),
                // Email
                CustomTextField(
                  label: "Email:",
                  controller: _emailController,
                  hint: "example@gmail.com",
                  isEmail: true,
                ),
                const SizedBox(height: 20),
                // Password
                PasswordField(
                  label: "Password:",
                  controller: _passwordController,
                ),
                const SizedBox(height: 20),
                // Confirm Password
                PasswordField(
                  label: "Confirm Password:",
                  controller: _confirmPasswordController,
                ),
                const SizedBox(height: 20),
                // Gender Selection
                GenderSelection(
                  gender: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                      _gendercontroller.text = value ??
                          ''; // Update the controller with selected gender
                    });
                  },
                ),
                const SizedBox(height: 20),
                // Terms and Conditions Checkbox
                TermsAndConditions(
                  checked: checked,
                  onChanged: (value) {
                    setState(() {
                      checked = value ?? false;
                    });
                  },
                ),
                const SizedBox(height: 30),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(backgroundColor),
                    ),
                    onPressed: _signUp, // Call the sign-up function here
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: Text(
                        "Sign Up",
                        style:
                            poppins.copyWith(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Divider(height: 1, color: Colors.black)),
                      Expanded(
                          flex: 2,
                          child: Text("Or Sign up with",
                              textAlign: TextAlign.center)),
                      Expanded(
                          flex: 1,
                          child: Divider(height: 1, color: Colors.black)),
                    ],
                  ),
                ),
                const signUpPlatform(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: poppins.copyWith(color: Colors.black),
                      ),
                      InkWell(
                        overlayColor:
                            const WidgetStatePropertyAll(Colors.transparent),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign in",
                          style: poppins.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                            decorationThickness: 2,
                          ),
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
    );
  }
}
