import 'package:flutter/material.dart';
import 'package:sessiontask/widgets/AppBars/ChatAppBar.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildChatAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Chat messages list (this can be replaced with your chat message list implementation)
            Expanded(
              child: ListView.builder(
                itemCount: 20, // Replace with your chat message count
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('User ${index + 1}'),
                    subtitle: Text('Message from user ${index + 1}'),
                  );
                },
              ),
            ),
            // Message input field
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      // Handle send message action
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
