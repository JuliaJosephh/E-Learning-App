import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/QuizFunctionalityPage.dart';
import 'package:sessiontask/widgets/CodeBox.dart';

class ContentPage extends StatelessWidget {
  final List<Map<String, dynamic>> content; // List of content items
  final List<Map<String, dynamic>> questions; // List of questions
  final String title; // Title of the content

  const ContentPage({
    Key? key,
    required this.content,
    required this.questions,
    required this.title,
  }) : super(key: key);

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
        title: Text(title,
            style: const TextStyle(fontSize: 16, color: Colors.white)),
        backgroundColor: backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics:
                  const NeverScrollableScrollPhysics(), // Disable scrolling
              shrinkWrap:
                  true, // Allow the ListView to size itself to its content
              itemCount: content.length,
              itemBuilder: (context, index) {
                final item = content[index];

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
                              language: "Python",
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            // Button to start the quiz
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, right: 10.0),
              child: Align(
                alignment: Alignment.centerRight, // Align button to the right
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        backgroundColor, // Define your button color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12), // Button padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), // Rounded corners
                    ),
                    elevation: 6, // Elevation for shadow
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            RandomQuestionsPage(questions: questions),
                      ),
                    );
                  },
                  child: const Text(
                    "Start quiz!",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
