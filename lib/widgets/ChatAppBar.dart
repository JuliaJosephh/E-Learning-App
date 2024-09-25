// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

@override
Widget buildchatappbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    flexibleSpace: Stack(
      children: [
        Container(
          height: 70,
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
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    'images/user.png',
                  ),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10,
                  child: CircleAvatar(backgroundColor: Colors.green, radius: 7),
                ),
              ],
            ),
            SizedBox(width:180 ,),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
              
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.videocam,
                          color: Colors.white,
                          size: 35,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ],
    ),
  );
}
