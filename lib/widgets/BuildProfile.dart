import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/ProfileButtons.dart';

@override
Widget buildprofile(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      const SizedBox(
        height: 10,
      ),
      buildprofilebutton(
          context,
          "Account Info",
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: IconColor,
          ),
          Icon(Icons.assignment_ind_rounded, color: IconColor)),
      const SizedBox(
        height: 20,
      ),
      buildprofilebutton(
          context,
          "Courses Details",
          Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
          Icon(Icons.density_small_sharp, color: IconColor)),
      const SizedBox(
        height: 20,
      ),
      buildprofilebutton(
          context,
          "Setting",
          Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
          Icon(Icons.settings, color: IconColor)),
      const SizedBox(
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
