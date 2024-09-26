// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:sessiontask/screens/signup.dart';

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
              style: TextStyle(
                  fontSize: heading_title, fontWeight: FontWeight.bold),
            ),
            Text(
              "please Sign in to continue",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: des_title),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Email:",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                          hintText: "example@.com",
                          hintStyle: TextStyle(color: Colors.black38)),
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Password:",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                          hintText: "***********",
                          hintStyle: TextStyle(color: Colors.black38)),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 25, left: 260),
              child: InkWell(
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  onTap: () {
                    //forget pass page
                  },
                  child: Text(
                    "forget Password?",
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 2),
                    textAlign: TextAlign.end,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(btn_color)),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                children: [
                  Expanded(flex: 1, child: Divider(height: 1, color: Colors.black)),
                  Expanded(flex: 2,
                      child: Text(
                        "Or Sign in with",
                        textAlign: TextAlign.center,
                      )),
                  Expanded(flex: 1, child: Divider(height: 1, color: Colors.black)),
                ],
              ),
            ),
            signwplatform(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account yet? ",
                  style: TextStyle(color: Colors.black),
                ),
                InkWell(
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  onTap: () {
                    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Signup()));
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 16,
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
    ));
  }
}


