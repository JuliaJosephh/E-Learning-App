import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/ChatPage.dart';
import 'package:sessiontask/screens/ProfilePage.dart';
import 'package:sessiontask/screens/homePage.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<DefaultScreen> {
  int selected_index = 0;

  final List<Widget> pages = [
    const HomePage(), 
    const ChatPage(),
    const ProfilePage(), 
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selected_index,
            selectedItemColor: backgroundColor,
            onTap: (value) {
              setState(() {
                selected_index = value; 
              });
            },
            items: const [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Chat", icon: Icon(Icons.chat)),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person_pin_circle_outlined),
              ),
            ],
          ),
          body: pages[
              selected_index], 
        ),
      ),
    );
  }
}
