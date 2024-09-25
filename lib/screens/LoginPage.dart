// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:sessiontask/screens/SignUpPage.dart';
import 'package:sessiontask/screens/homePage.dart';

import '../constants/constants.dart';
import '../widgets/platforms.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Sign In",
                textAlign: TextAlign.center,
                style:
                    poppins.copyWith(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Text(
                "please Sign in to continue",
                textAlign: TextAlign.center,
                style: poppins.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Email:",
                  textAlign: TextAlign.start,
                  style: poppins.copyWith(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: textfieldclr),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "example@gmail.com",
                          hintStyle: poppins.copyWith(
                              color: Colors.black38, fontSize: 12)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Password:",
                  textAlign: TextAlign.start,
                  style: poppins.copyWith(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: textfieldclr),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: TextField(
                      obscureText: hidden,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  hidden = !hidden;
                                });
                              },
                              icon: Icon(Icons.remove_red_eye)),
                          border: InputBorder.none,
                          hintText: "*********",
                          hintStyle: poppins.copyWith(
                              color: Colors.black38, fontSize: 12),
                          contentPadding: const EdgeInsets.only(top: 15)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 25, left: 260),
                child: InkWell(
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  onTap: () {
                    //forget pass page
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
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(backgroundColor)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Text(
                      "Sign in",
                      style:
                          poppins.copyWith(color: Colors.white, fontSize: 14),
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
                        child: Divider(height: 1, color: Colors.black)),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Or Sign in with",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Divider(height: 1, color: Colors.black)),
                  ],
                ),
              ),
              SignUpPlatform(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account yet? ",
                    style: poppins.copyWith(color: Colors.black),
                  ),
                  InkWell(
                    overlayColor: MaterialStatePropertyAll(Colors.transparent),
                    onTap: () {
                      runApp(MaterialApp(
                          debugShowCheckedModeBanner: false, home: Signup()));
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
    );
  }
}
