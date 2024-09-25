import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

@override
  Widget buildhomeappbar(BuildContext context) {
    return AppBar(
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
    );
  }
