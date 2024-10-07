// ignore_for_file: non_constant_identifier_names, constant_identifier_names, unnecessary_const

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color btn_color = Color.fromARGB(255, 29, 26, 114);
const Color textfieldclr = Color.fromARGB(70, 92, 92, 92);
const Color backgroundColor = Color.fromARGB(255, 11, 93, 235);
const Color TextColor = Color.fromARGB(255, 7, 26, 59);
const heading_title = 35.0, des_title = 16.0;

Color? WavingHandColor = Colors.yellow[500];
Color? GreySearchColor = Colors.grey[600];
Color? GreyBoxColor = Colors.grey[200];
Color? IconColor = Colors.grey[800];
Color? LockedChapterColor = Colors.grey[400];
final TextStyle poppins = GoogleFonts.poppins();

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.white,//backgroundcolor
    primary: Color.fromARGB(255, 11, 93, 235),//button color
    secondary: Colors.black //text color
  
  )
);

ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
       primary: Colors.white,
        secondary: Colors.white

       
  )
);