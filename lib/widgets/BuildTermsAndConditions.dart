import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class TermsAndConditions extends StatelessWidget {
  final bool checked;
  final ValueChanged<bool?> onChanged;

  const TermsAndConditions({super.key, required this.checked, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Checkbox(
            value: checked,
            onChanged: onChanged,
          ),
          Expanded(
            child: Text(
              "I agree to the Terms & Conditions",
              style: poppins.copyWith(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
