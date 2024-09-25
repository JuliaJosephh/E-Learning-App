// ignore_for_file: avoid_print, prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/LoginPage.dart';
import 'package:sessiontask/screens/homePage.dart';
import 'package:sessiontask/widgets/platforms.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool hidden = true, checked = false;
  String? country;
  void checked_box(newValue) {
    setState(() {
      checked = newValue!;
    });
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
                  builder: (context) => Login(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back,
            )),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Create Account",
                textAlign: TextAlign.center,
                style:
                    poppins.copyWith(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Text(
                "Enter your details and let's get you in",
                textAlign: TextAlign.center,
                style: poppins.copyWith(fontSize: 12),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "First Name:",
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
                            hintText: "First Name",
                            hintStyle: poppins.copyWith(
                                color: Colors.black38, fontSize: 12)),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Last Name:",
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
                            hintText: "Last Name",
                            hintStyle: poppins.copyWith(
                                color: Colors.black38, fontSize: 12)),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "User Name:",
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
                          hintText: "User Name",
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
                          hintText: "*",
                          hintStyle: poppins.copyWith(
                              color: Colors.black38, fontSize: 12),
                          contentPadding: const EdgeInsets.only(top: 15)),
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
                  "Confirm Password:",
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
                            hintText: "*",
                            hintStyle: poppins.copyWith(
                                color: Colors.black38, fontSize: 12),
                            contentPadding: const EdgeInsets.only(top: 15)),
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Radio(
                        value: "Male",
                        groupValue: country,
                        onChanged: (val) {
                          setState(() {
                            country = val;
                          });
                        }),
                    Text(
                      "Male",
                      style: poppins.copyWith(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Radio(
                        value: "Female",
                        groupValue: country,
                        onChanged: (val) {
                          setState(() {
                            country = val;
                          });
                        }),
                    Text(
                      "Female",
                      style: poppins.copyWith(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Checkbox(
                      value: checked,
                      onChanged: checked_box,
                    ),
                    Text("Agree with "),
                    Text(
                      "Terms & Conditions",
                      style: poppins.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          decorationThickness: 2),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(backgroundColor),
                    ),
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
                        "Sign Up",
                        style:
                            poppins.copyWith(color: Colors.white, fontSize: 14),
                      ),
                    )),
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
                          "Or Sign up with",
                          textAlign: TextAlign.center,
                        )),
                    Expanded(
                        flex: 1,
                        child: Divider(height: 1, color: Colors.black)),
                  ],
                ),
              ),
              SignUpPlatform(),
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
                          MaterialStatePropertyAll(Colors.transparent),
                      onTap: () {
                        runApp(MaterialApp(
                            debugShowCheckedModeBanner: false, home: Signup()));
                      },
                      child: Text(
                        "Sign in",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
