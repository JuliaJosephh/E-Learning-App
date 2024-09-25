import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

@override
  Widget buildprofileappbar(BuildContext context) {
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
            IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,)),
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'images/user.png',
                    ),
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(height:10 ),
                  Text(
                    'Beshoy Safwat',
                    style:
                        poppins.copyWith(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  
                  
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }