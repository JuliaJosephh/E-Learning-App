import 'package:flutter/material.dart';
import 'package:sessiontask/widgets/BuildAccountInfoRow.dart';

Widget AccountInfoBox() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAccountInfoRow(Icons.person, 'First Name:', 'Julia'),
        const SizedBox(height: 10),
        buildAccountInfoRow(Icons.person_outline, 'Last Name:', 'Joseph'),
        const SizedBox(height: 10),
        buildAccountInfoRow(Icons.email, 'Email:', 'juliajoseph265@gmail.com'),
        const SizedBox(height: 10),
        buildAccountInfoRow(
            Icons.phone, 'Mobile Number:', '+0121 - 018 - 6441'),
      ],
    ),
  );
}
