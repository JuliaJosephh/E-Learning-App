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
  String? _fullNameError;
  String? _usernameError;
  String? _phoneError;
  String? _emailError;
  String? _passwordError;
  String? _confirmPasswordError;
  String? _genderError;

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
    void _showErrorDialog(String errorMessage) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.rightSlide,
        title: 'Error',
        desc: errorMessage,
      ).show();
    }

    setState(() {
      // Clear previous error messages
      _fullNameError = null;
      _usernameError = null;
      _phoneError = null;
      _emailError = null;
      _passwordError = null;
      _confirmPasswordError = null;
      _genderError = null;
    });

    // Validate fields
    if (_fullNameController.text.isEmpty) {
      setState(() {
        _fullNameError = 'Please enter your full name.';
      });
      return;
    }

    if (_usernameController.text.isEmpty) {
      setState(() {
        _usernameError = 'Please enter a username.';
      });
      return;
    }

    String phone = _phonecontroller.text;
    if (phone.isEmpty) {
      setState(() {
        _phoneError = 'Please enter your phone number.';
      });
      return;
    } else if (!RegExp(r'^01\d{9}$').hasMatch(phone)) {
      setState(() {
        _phoneError = 'Phone number must start with 01 and be exactly 11 digits.';
      });
      return;
    }

    String email = _emailController.text;
    if (email.isEmpty) {
      setState(() {
        _emailError = 'Please enter your email.';
      });
      return;
    } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)) {
      setState(() {
        _emailError = 'Please enter a valid email address.';
      });
      return;
    }

    String password = _passwordController.text;
    if (password.isEmpty) {
      setState(() {
        _passwordError = 'Please enter your password.';
      });
      return;
    } else if (password.length < 6) {
      setState(() {
        _passwordError = 'Password must be at least 6 characters.';
      });
      return;
    }
 if (_confirmPasswordController.text.isEmpty) {
    setState(() {
      _confirmPasswordError = 'Please confirm your password.';
    });
    return;
  } else if (_passwordController.text != _confirmPasswordController.text) {
    // Show error dialog instead of setting the error message
    _showErrorDialog('Passwords do not match. Please try again.');
    return;
  }

    // Validate gender selection
    if (selectedGender == null || selectedGender!.isEmpty) {
      setState(() {
        _genderError = 'Please select a gender.';
      });
      return;
    }

    // Check if terms and conditions checkbox is checked
    if (!checked) {
      _showErrorDialog('You must accept the terms and conditions.');
      return;
    }

    String errorMessage = 'An unknown error occurred.';
    try {
      // Check if the username already exists
      final QuerySnapshot result = await FirebaseFirestore.instance
          .collection('User_Info')
          .where('username', isEqualTo: _usernameController.text)
          .get();

      final List<DocumentSnapshot> documents = result.docs;

      if (documents.isNotEmpty) {
        // If there is a document with the same username, show an error message
        _showErrorDialog('The username is already taken. Please choose another.');
        return;
      }

      // Sign up with FirebaseAuth
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // If sign-up is successful, get the user ID (uid)
      String uid = credential.user!.uid;

      // Store user information in Firestore using the uid as the document ID
      CollectionReference collref = FirebaseFirestore.instance.collection("User_Info");
      await collref.doc(uid).set({
        "FullName": _fullNameController.text,
        "username": _usernameController.text,
        "email": _emailController.text,
        "gender": _gendercontroller.text,
        "mobileNumber": _phonecontroller.text,
        "password": _passwordController.text, // Consider hashing passwords for security
        "createdAt": DateTime.now(),
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
                // Full Name
                CustomTextField(
                  label: "Full Name:",
                  controller: _fullNameController,
                  hint: "Full Name",
                ),
                if (_fullNameError != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      _fullNameError!,
                      style: TextStyle(color: Colors.red,fontSize: 12),
                    ),
                  ),
                const SizedBox(height: 20),
                // Username
                CustomTextField(
                  label: "User Name:",
                  controller: _usernameController,
                  hint: "User Name",
                ),
                if (_usernameError != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      _usernameError!,
                      style: TextStyle(color: Colors.red,fontSize: 12),
                    ),
                  ),
                const SizedBox(height: 20),
                // Phone Number
                CustomTextField(
                  label: "Phone Number:",
                  controller: _phonecontroller,
                  hint: "Phone Number",
                ),
                if (_phoneError != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      _phoneError!,maxLines: 2,
                      style: TextStyle(color: Colors.red,fontSize: 12,),
                    ),
                  ),
                const SizedBox(height: 20),
                // Email
                CustomTextField(
                  label: "Email:",
                  controller: _emailController,
                  hint: "example@gmail.com",
                  isEmail: true,
                ),
                if (_emailError != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      _emailError!,
                      style: TextStyle(color: Colors.red,fontSize: 12),
                    ),
                  ),
                const SizedBox(height: 20),
                // Password
                PasswordField(
                  label: "Password:",
                  controller: _passwordController,
                ),
                if (_passwordError != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      _passwordError!,
                      style: TextStyle(color: Colors.red,fontSize: 12),
                    ),
                  ),
                const SizedBox(height: 20),
                // Confirm Password
                PasswordField(
                  label: "Confirm Password:",
                  controller: _confirmPasswordController,
                ),
                if (_confirmPasswordError != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      _confirmPasswordError!,
                      style: TextStyle(color: Colors.red,fontSize: 12),
                    ),
                  ),
                const SizedBox(height: 20),
                // Gender Selection
                GenderSelection(
                  gender: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                      _gendercontroller.text = value ?? '';
                    });
                  },
                ),
                if (_genderError != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Text(
                      _genderError!,
                      style: TextStyle(color: Colors.red,fontSize: 12),
                    ),
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
                      backgroundColor:
                          MaterialStateProperty.all(backgroundColor),
                    ),
                    onPressed: _signUp,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: Text(
                        "Sign Up",
                        style: poppins.copyWith(
                            color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ),
                // Platform buttons for sign up
                const SizedBox(height: 20),
                signUpPlatform(),
                const SizedBox(height: 20),
                // Text for navigation to Login page
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: poppins.copyWith(color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ),
                          );
                        },
                        child: Text(
                          "Signin",
                          style: poppins.copyWith(
                              color: backgroundColor, fontWeight: FontWeight.bold),
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
