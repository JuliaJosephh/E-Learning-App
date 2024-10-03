import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

Widget buildLockedButton(BuildContext context, int pointNum, String pointDes,
    bool locked, Widget? page) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor:
          WidgetStateProperty.all(locked ? Colors.grey : backgroundColor),
    ),
    onPressed: locked
        ? null // Disable the button if it's locked
        : () {
            if (page != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page, // Navigate to the specific page
                ),
              );
            }
          },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            "Point $pointNum : ",
            style: poppins.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Center(
          child: Text(
            pointDes,
            style: poppins.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                locked
                    ? Icons.lock
                    : Icons.lock_open, // Show lock or unlock icon
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
