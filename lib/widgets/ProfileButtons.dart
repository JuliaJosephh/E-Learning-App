// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

@override
  Widget buildprofilebutton(BuildContext context,String buttontxt,Icon iconname,Icon firsticon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
      child: TextButton(
          style: ButtonStyle(
              overlayColor: WidgetStateColor.transparent,
              backgroundColor: MaterialStateProperty.all(Colors.blueGrey[50])),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    firsticon,
                    SizedBox(width: 8,),
                    Text("$buttontxt",
                        style: poppins.copyWith(
                            color: Colors.grey[800],
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ],
                ),

               iconname,
              ],
            ),
          )),
    );
  }