import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/AppBars/AppBarProfile.dart';
import 'package:sessiontask/widgets/ProfileButtons.dart';


class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildprofileappbar(context),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          const SizedBox(height: 10),
          buildprofilebutton(
            context,
            "Account Info",
            Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
            Icon(Icons.assignment_ind_rounded, color: IconColor),
          ),
          const SizedBox(height: 20),
          buildprofilebutton(
            context,
            "Courses Details",
            Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
            Icon(Icons.density_small_sharp, color: IconColor),
          ),
          const SizedBox(height: 20),
          buildprofilebutton(
            context,
            "Settings",
            Icon(Icons.arrow_forward_ios_outlined, color: IconColor),
            Icon(Icons.settings, color: IconColor),
          ),
          const SizedBox(height: 20),
          buildprofilebutton(
            context,
            "Logout",
            const Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.transparent),
            Icon(Icons.logout_outlined, color: IconColor),
          ),
        ],
      ),
    );
  }
}
