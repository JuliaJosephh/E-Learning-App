import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class BuildingAndroidAppsPage extends StatelessWidget {
  const BuildingAndroidAppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Building Android Apps',
            style: poppins.copyWith(fontSize: 14)),
      ),
      body: Center(
        child: Text('Welcome to the Building Adroid Apps page!',
            style: poppins.copyWith(fontSize: 14)),
      ),
    );
  }
}
