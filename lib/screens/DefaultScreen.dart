import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/CourseDetailsPage.dart';
import 'package:sessiontask/screens/ChatPage.dart';
import 'package:sessiontask/screens/ProfilePage.dart';
import 'package:sessiontask/screens/homePage.dart';
import 'package:sessiontask/widgets/BuildCoursePage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected_index = 0;

  final List<Widget> pages = [
    HomePage(), 
    ChatPage(),
    Profilepage(), 
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
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
