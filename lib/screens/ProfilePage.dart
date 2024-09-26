import 'package:flutter/material.dart';
import 'package:sessiontask/widgets/AppBars/ProfileAppBar.dart';
import 'package:sessiontask/widgets/BuildProfile.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildprofileappbar(context),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          const SizedBox(height: 10),
          buildprofile(context),
        ]
      )
    );
  }
}
