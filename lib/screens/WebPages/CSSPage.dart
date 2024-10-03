import 'package:flutter/material.dart';
import 'package:sessiontask/Content/webContent/CSSContent.dart'; // Make sure to create this file for CSS content
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/CodeBox.dart';

class CSSPage extends StatelessWidget {
  const CSSPage({super.key});

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
          'CSS',
          style: poppins.copyWith(fontSize: 14, color: Colors.white),
        ),
        backgroundColor: backgroundColor,
      ),
      body: ListView.builder(
        itemCount: CSSContent.length, 
        itemBuilder: (context, index) {
          final item = CSSContent[index];

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
                        language: "CSS",
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
