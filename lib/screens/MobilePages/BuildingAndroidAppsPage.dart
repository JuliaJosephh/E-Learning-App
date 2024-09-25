import 'package:flutter/material.dart';

class BuildingAndroidAppsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Building Adroid Apps page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
