import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

Widget buildlockedbtn(
    BuildContext context, int pointNum, String pointDes, bool locked) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(backgroundColor),
    ),
    onPressed: () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            "point $pointNum : ",
            style: poppins.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Center(
          child: Text(pointDes,
              style: poppins.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.lock,
                color: locked ? Colors.white : Colors.white.withOpacity(0),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
