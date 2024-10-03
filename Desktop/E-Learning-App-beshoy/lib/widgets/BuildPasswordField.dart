import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class PasswordField extends StatefulWidget {
  final String label;
  final TextEditingController controller;

  const PasswordField({super.key, 
    required this.label,
    required this.controller,
  });

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
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
                controller: widget.controller,
                obscureText: hidden,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hidden = !hidden;
                      });
                    },
                    icon: const Icon(Icons.remove_red_eye),
                  ),
                  border: InputBorder.none,
                  hintText: "*********",
                  hintStyle:
                      poppins.copyWith(color: Colors.black38, fontSize: 12),
                  contentPadding: const EdgeInsets.only(top: 15),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '${widget.label} is required';
                  }
                  if (widget.controller == widget.controller &&
                      value != widget.controller.text) {
                    return 'Passwords do not match';
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
