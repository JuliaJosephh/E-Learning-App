import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

Widget buildAccountInfoRow(IconData icon, String label, String value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          textAlign: TextAlign.start,
          label,
          style: poppins.copyWith(
            color: IconColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: Colors.grey.shade400,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Icon(icon, color: IconColor, size: 24),
            const SizedBox(width: 10),
            Text(
              value,
              style: poppins.copyWith(
                color: value.isNotEmpty ? IconColor : Colors.black38,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 10),
    ],
  );
}
