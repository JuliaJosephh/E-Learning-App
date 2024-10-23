import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/AccountInfoPage.dart';
import 'package:sessiontask/screens/DefaultScreen.dart';
import 'package:sessiontask/screens/loginPage.dart';
import 'package:sessiontask/widgets/BuildProfileButtons.dart';

Widget buildprofile(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      const SizedBox(height: 10),
      buildprofilebutton(
        context,
        "Account Info",
        Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
        Icon(Icons.assignment_ind_rounded, color: IconColor),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AccountInfoPage()));
        },
      ),
      const SizedBox(height: 20),
      buildprofilebutton(
        context,
        "Courses Details",
        Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
        Icon(Icons.density_small_sharp, color: IconColor),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DefaultScreen()),
          );
        },
      ),
      const SizedBox(height: 20),
      buildprofilebutton(
        context,
        "Logout",
        Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
        Icon(Icons.logout_outlined, color: IconColor),
        onPressed: () async {
          await FirebaseAuth.instance.signOut();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Login()),
          );
        },
      ),
      const SizedBox(height: 20),
    ],
  );
}
