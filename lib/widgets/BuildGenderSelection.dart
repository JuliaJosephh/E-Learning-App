import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class GenderSelection extends StatelessWidget {
  final String? gender;
  final ValueChanged<String?> onChanged;

  const GenderSelection({
    Key? key,
    required this.gender,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Radio<String>(
            value: "Male",
            groupValue: gender,
            onChanged: onChanged,
          ),
          Text(
            "Male",
            style: poppins.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Radio<String>(
            value: "Female",
            groupValue: gender,
            onChanged: onChanged,
          ),
          Text(
            "Female",
            style: poppins.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
