import 'package:flutter/material.dart';


class MessageBubble extends StatelessWidget {
  final String message;
  final bool isSentByUser;

  const MessageBubble({
    super.key,
    required this.message,
    required this.isSentByUser,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSentByUser ? Colors.blueAccent : Colors.grey.shade200,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: isSentByUser ? const Radius.circular(20) : Radius.zero,
            bottomRight: isSentByUser ? Radius.zero : const Radius.circular(20),
          ),
        ),
        constraints: const BoxConstraints(
            maxWidth: 250),
        child: Text(
          message,
          style: TextStyle(
            color: isSentByUser ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}

