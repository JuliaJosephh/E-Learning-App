import 'package:flutter/material.dart';
import 'package:sessiontask/Content/webContent/JavaScriptContent.dart'; // Make sure to create this file for JavaScript content
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/CodeBox.dart';

class JavaScript extends StatelessWidget {
  const JavaScript({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'JavaScript',
          style: poppins.copyWith(fontSize: 14, color: Colors.white),
        ),
        backgroundColor: backgroundColor,
      ),
      body: ListView.builder(
        itemCount: JSContent.length, 
        itemBuilder: (context, index) {
          final item = JSContent[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title'],
                      style: const TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item['content'],
                      style: const TextStyle(fontSize: 16), 
                    ),
                    const SizedBox(height: 10),
                    if (item['code'] != null)
                      CodeBox(
                        code: item['code'],
                        language: "JavaScript",
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
