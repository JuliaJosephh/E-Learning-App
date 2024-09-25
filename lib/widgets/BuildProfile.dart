// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/ProfileButtons.dart';

@override
Widget buildprofile(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      SizedBox(
        height: 10,
      ),
      buildprofilebutton(
          context,
          "Profile Info",
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: IconColor,
          ),
          Icon(Icons.assignment_ind_rounded, color: IconColor)),
      SizedBox(
        height: 20,
      ),
      buildprofilebutton(
          context,
          "Courses Details",
          Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
          Icon(Icons.density_small_sharp, color: IconColor)),
      SizedBox(
        height: 20,
      ),
      buildprofilebutton(
          context,
          "Setting",
          Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
          Icon(Icons.settings, color: IconColor)),
      SizedBox(
        height: 20,
      ),
      buildprofilebutton(
          context,
          "Logout",
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.transparent,
          ),
          Icon(Icons.logout_outlined, color: IconColor)),
    ],
  );
}
