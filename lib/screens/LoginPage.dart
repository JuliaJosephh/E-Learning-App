import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sessiontask/screens/DefaultScreen.dart';
import 'package:sessiontask/screens/SignUpPage.dart';
import 'package:sessiontask/screens/forgetpassword.dart';
import '../constants/constants.dart';
import '../widgets/platforms.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _emailError = false; // To track the email validation error
  String? _emailErrorMessage;
  bool _passwordError = false; // To track the password validation error
  String? _passwordErrorMessage;

  bool hidden = true;

 void _validateAndLogin() async {
  setState(() {
    _emailError = false;
    _passwordError = false;
  });

  // Email validation
  String email = _emailController.text;
  if (email.isEmpty) {
    setState(() {
      _emailError = true;
      _emailErrorMessage = 'Please enter your email';
    });
    return; // Stop execution if there's an error
  } else {
    String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(email)) {
      setState(() {
        _emailError = true;
        _emailErrorMessage = 'Enter a valid email';
      });
      return; // Stop execution if there's an error
    }
  }

  // Password validation
  String password = _passwordController.text;
  if (password.isEmpty) {
    setState(() {
      _passwordError = true;
      _passwordErrorMessage = 'Please enter your password';
    });
    return; // Stop execution if there's an error
  } else if (password.length < 6) {
    setState(() {
      _passwordError = true;
      _passwordErrorMessage = 'Password must be at least 6 characters';
    });
    return; // Stop execution if there's an error
  }

  // If no errors, proceed to sign in
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    // If sign-in is successful, navigate to DefaultScreen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DefaultScreen(),
      ),
    );
  } on FirebaseAuthException catch (e) {
    String errorMessage;
    if (e.code == 'user-not-found') {
      errorMessage = 'No user found for that email.';
    } else if (e.code == 'wrong-password') {
      errorMessage = 'Wrong password provided for that user.';
    } else {
      errorMessage = 'An unknown error occurred.';
    }
    // Show the error dialog
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.rightSlide,
      title: 'Error',
      desc: errorMessage,
    ).show();
  }
}

    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Sign In",
                  textAlign: TextAlign.center,
                  style: poppins.copyWith(
                      fontSize: 26, fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary),
                ),
                Text(
                  "please Sign in to continue",
                  textAlign: TextAlign.center,
                  style: poppins.copyWith(fontSize: 12,color: Theme.of(context).colorScheme.secondary),
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Email:",
                    textAlign: TextAlign.start,
                    style: poppins.copyWith(
                        fontSize: 14, fontWeight: FontWeight.bold ,color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Align error message to the start
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: textfieldclr,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "example@gmail.com",
                              hintStyle: poppins.copyWith(
                                   fontSize: 12,color: Theme.of(context).colorScheme.secondary),
                            ),
                           
                          ),
                        ),
                      ),
                      if (_emailError) // Conditionally show error message
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8),
                          child: Text(
                            _emailErrorMessage ?? '',
                            style: const TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Password:",
                        textAlign: TextAlign.start,
                        style: poppins.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: textfieldclr,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 5),
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: hidden,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    hidden = !hidden;
                                  });
                                },
                                icon: Icon(
                                  hidden
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: "*********",
                              hintStyle: poppins.copyWith(
                                color: Theme.of(context).colorScheme.secondary
                                ,fontSize: 12,
                              ),
                              contentPadding: const EdgeInsets.only(top: 15),
                            ),
                    
                          ),
                        ),
                      ),
                    ),
                    if (_passwordError) // Conditionally show error message for password
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 30.0),
                        child: Text(
                          _passwordErrorMessage ?? '',
                          style: const TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, right: 25, left: 20),
                  child: InkWell(
                    overlayColor:
                        const WidgetStatePropertyAll(Colors.transparent),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Forgetpassword()),
                        );
                      });
                    },
                    child: Text(
                      "forgot Password?",
                      style: poppins.copyWith(
                          color: Colors.blue,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          decorationThickness: 2),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(Theme.of(context).colorScheme.primary)),
                    onPressed: () async {
                      _validateAndLogin();
                      if (_formKey.currentState!.validate()) {
                        try {
                          final credential = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passwordController.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DefaultScreen(),
                            ),
                          );
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            debugPrint('No user found for that email.');
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.error,
                              animType: AnimType.rightSlide,
                              title: 'Error',
                              desc: 'No user found for that email.',
                            ).show();
                          } else if (e.code == 'wrong-password') {
                            debugPrint(
                                'Wrong password provided for that user.');
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.error,
                              animType: AnimType.rightSlide,
                              title: 'Error',
                              desc: 'Wrong password provided for that user.',
                            ).show();
                          }
                        }
                      }
                      // If the form is valid, navigate to the DefaultScreen
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: Text(
                        "Sign in",
                        style:
                            poppins.copyWith(color:Theme.of(context).colorScheme.surface, fontSize: 14,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Divider(height: 1, color:Theme.of(context).colorScheme.secondary)),
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Or Sign in with",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Divider(height: 1, color:Theme.of(context).colorScheme.secondary)),
                    ],
                  ),
                ),
                const signUpPlatform(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account yet? ",
                      style: poppins.copyWith(color: Theme.of(context).colorScheme.secondary),
                    ),
                    InkWell(
                      overlayColor:
                          const WidgetStatePropertyAll(Colors.transparent),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Signup(), 
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: poppins.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                            decorationThickness: 2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
