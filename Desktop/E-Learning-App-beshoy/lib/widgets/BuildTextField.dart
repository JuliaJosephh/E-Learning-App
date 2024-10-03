import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String hint;
  final bool isEmail;

  const CustomTextField({super.key, 
    required this.label,
    required this.controller,
    required this.hint,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: poppins.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: textfieldclr,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle:
                      poppins.copyWith(color: Colors.black38, fontSize: 12),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '$label is required';
                  }
                  if (isEmail &&
                      !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
