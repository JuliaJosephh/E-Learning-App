import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';

class LockedButton extends StatefulWidget {
  final int pointNum;
  final String pointDes;
  final bool locked;
  final Widget? page;

  const LockedButton({
    super.key,
    required this.pointNum,
    required this.pointDes,
    required this.locked,
    this.page,
  });

  @override
  State<LockedButton> createState() => _LockedButtonState();
}

class _LockedButtonState extends State<LockedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
            widget.locked ? Colors.grey : backgroundColor),
      ),
      onPressed: widget.locked
          ? null // Disable the button if it's locked
          : () {
              if (widget.page != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        widget.page!, // Navigate to the specific page
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
              "Point ${widget.pointNum} : ",
              style: poppins.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Text(
              widget.pointDes,
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
                  widget.locked
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
}
