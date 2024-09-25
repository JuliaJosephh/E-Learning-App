// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/BuildChat.dart';
import 'package:sessiontask/widgets/BuildCoursePage.dart';
import 'package:sessiontask/widgets/BuildProfile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected_index = 0;

  @override
  Widget build(BuildContext context) {
    var page_selected;
    if (selected_index == 0) {
      page_selected = BuildCoursePage(context);
    } else if (selected_index == 1) {
      page_selected = BuildChat(context);
    } else {
      page_selected = BuildProfile(context);
    }
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(
                          'images/user.png',
                        ),
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Hi, Name!',
                        style:
                            poppins.copyWith(fontSize: 18, color: Colors.white),
                      ),
                      const SizedBox(width: 5),
                      Transform.scale(
                        scale: 0.7,
                        child: Icon(
                          Icons.waving_hand,
                          color: WavingHandColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Let's start the journey!",
                    style: poppins.copyWith(fontSize: 10, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: Colors.grey.shade600),
                        prefixIcon: Icon(Icons.search, color: GreySearchColor),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selected_index,
            selectedItemColor: backgroundColor,
            onTap: (value) {
              setState(() {
                selected_index = value;
              });
            },
            items: [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Chat", icon: Icon(Icons.chat)),
              BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(Icons.person_pin_circle_outlined)),
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                page_selected,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
