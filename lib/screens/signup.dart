// ignore_for_file: avoid_print, prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/platforms.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
    bool hidden = true, checked = false;

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
              "Create Account",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: heading_title, fontWeight: FontWeight.bold),
            ),
            Text(
              "Enter your details and let's get you in", 
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Name:",
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
                          hintText: "User Name",
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
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Checkbox(
                    value: checked,
                    onChanged: ( newValue) {
                      setState(() {
                        checked = newValue!;
                      });
                    },
                  ),
                  Text("Agree with "),
                  Text("Terms & Conditions", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                              decorationThickness: 2),),
                ],
              ),
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
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1, child: Divider(height: 1, color: Colors.black)),
                  Expanded(
                      flex: 2,
                      child: Text(
                        "Or Sign up with",
                        textAlign: TextAlign.center,
                      )),
                  Expanded(
                      flex: 1, child: Divider(height: 1, color: Colors.black)),
                ],
              ),
            ),
            signwplatform(),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.black),
                ),
                InkWell(
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  onTap: () {
                    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Signup()));
                  },
                  child: Text(
                    "Sign in",
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
