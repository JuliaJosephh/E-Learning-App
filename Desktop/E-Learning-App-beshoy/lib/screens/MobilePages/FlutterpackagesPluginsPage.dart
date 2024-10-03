import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class FlutterpackagesPluginsPage extends StatelessWidget {
  const FlutterpackagesPluginsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Flutter Packages & Plugins',
            style: poppins.copyWith(fontSize: 14, color: Colors.white)),
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Text('Welcome to the Flutter Packages & Plugins page!',
            style: poppins.copyWith(fontSize: 14)),
      ),
    );
  }
}
