import 'package:flutter/material.dart';
import 'package:sessiontask/Content/FlutterContent/DartProgrammingContent.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/CodeBox.dart';

class DartProgrammingPage extends StatelessWidget {
  const DartProgrammingPage({super.key});

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
        title: const Text('Dart Programming',
            style: TextStyle(fontSize: 14, color: Colors.white)),
        backgroundColor: backgroundColor,
      ),
      body: ListView.builder(
        itemCount: dartContent.length,
        itemBuilder: (context, index) {
          final item = dartContent[index];

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
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item['content'],
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                    if (item['code'] != null)
                      CodeBox(
                        code: item['code'],
                        language: "Dart",
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
