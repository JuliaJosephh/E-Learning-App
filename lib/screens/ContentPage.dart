import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/QuizFunctionalityPage.dart';
import 'package:sessiontask/widgets/CodeBox.dart';

class ContentPage extends StatelessWidget {
  final List<Map<String, dynamic>> content; 
  final List<Map<String, dynamic>> questions; 
  final String title;
  final dynamic currentPage;
  final dynamic trackChosen; 
  final String language; 

  const ContentPage({
    super.key,
    required this.content,
    required this.questions,
    required this.title,
    required this.currentPage,
    required this.trackChosen,
    required this.language, 
  });

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
                  const NeverScrollableScrollPhysics(), 
              shrinkWrap:
                  true, 
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
                              language: language, 
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, right: 10.0),
              child: Align(
                alignment: Alignment.centerRight, 
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        backgroundColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12), 
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), 
                    ),
                    elevation: 6, 
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            RandomQuestionsPage(questions: questions, CurrentPage: currentPage, TrackChosen: trackChosen),
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
