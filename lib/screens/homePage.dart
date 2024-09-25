// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/BuildChat.dart';
import 'package:sessiontask/widgets/BuildCoursePage.dart';
import 'package:sessiontask/widgets/BuildProfile.dart';
import 'package:sessiontask/widgets/appbarprofile.dart';
import 'package:sessiontask/widgets/ChatAppBar.dart';

import '../widgets/homeappbar.dart';

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
    var appbar_selected;
    double appbarsize = 150;
    if (selected_index == 0) {
      page_selected = BuildCoursePage(context);
      appbar_selected = buildhomeappbar(context);
      appbarsize = 150;
    } else if (selected_index == 1) {
      page_selected = BuildChat(context);
      appbar_selected = buildchatappbar(context);
      appbarsize = 70;
    } else {
      page_selected = buildprofile(context);
      appbar_selected = buildprofileappbar(context);
      appbarsize = 300;
    }
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(appbarsize),
            child: appbar_selected,
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
      ),
    );
  }
}
