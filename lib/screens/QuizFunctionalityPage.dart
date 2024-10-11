import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/DefaultScreen.dart';

class RandomQuestionsPage extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  final dynamic CurrentPage;
  final List<Map<String, dynamic>>
      TrackChosen; // Updated to handle the course track

  const RandomQuestionsPage({
    required this.questions,
    super.key,
    required this.CurrentPage,
    required this.TrackChosen,
  });

  @override
  RandomQuestionsPageState createState() => RandomQuestionsPageState();
}

class RandomQuestionsPageState extends State<RandomQuestionsPage> {
  late List<Map<String, dynamic>> selectedQuestions;
  List<String?> selectedAnswers = [];
  List<bool> correctAnswers = [];
  bool isSubmitted = false;
  bool isNextChapterUnlocked =
      false; // Updated to track next chapter unlock status

  @override
  void initState() {
    super.initState();
    final random = Random();
    selectedQuestions = (List<Map<String, dynamic>>.from(widget.questions)
          ..shuffle(random))
        .take(5)
        .toList();

    selectedAnswers = List.filled(selectedQuestions.length, null);
    correctAnswers = List.filled(selectedQuestions.length, false);
  }

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
        title: const Text('Quiz',
            style: TextStyle(fontSize: 14, color: Colors.white)),
        backgroundColor: backgroundColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: selectedQuestions.length,
              itemBuilder: (context, index) {
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
                            selectedQuestions[index]['question'],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          for (var option in selectedQuestions[index]
                              ['options'])
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      selectedAnswers[index] == option
                                          ? Colors.grey[400]
                                          : null,
                                ),
                                onPressed: () {
                                  if (!isSubmitted) {
                                    setState(() {
                                      selectedAnswers[index] = option;
                                      correctAnswers[index] = option ==
                                          selectedQuestions[index]['Answer'];
                                    });
                                  }
                                },
                                child: Text(option),
                              ),
                            ),
                          if (isSubmitted)
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Your answer: ${selectedAnswers[index] ?? "Not answered"}',
                                style: const TextStyle(color: Colors.blueGrey),
                              ),
                            ),
                          if (isSubmitted)
                            Text(
                              'Correct answer: ${selectedQuestions[index]['Answer']}',
                              style: TextStyle(
                                color: correctAnswers[index]
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          if (!isSubmitted)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isSubmitted = true;
                  });
                  showResults();
                },
                child: const Text('Submit'),
              ),
            ),
        ],
      ),
    );
  }

  void showResults() {
    int score = 0;
    for (var isCorrect in correctAnswers) {
      if (isCorrect) {
        score++;
      }
    }
    if ((score / selectedQuestions.length) >= 0.8) {
      setState(() {
        isNextChapterUnlocked = true;
      });

      int currentPageIndex = -1;

      for (int i = 0; i < widget.TrackChosen.length; i++) {
        if (widget.TrackChosen[i]['Page'].toString().toLowerCase() ==
            widget.CurrentPage.toString().toLowerCase()) {
          currentPageIndex = i;
          break;
        }
      }

      if (currentPageIndex != -1 &&
          currentPageIndex < widget.TrackChosen.length - 1) {
        setState(() {
          widget.TrackChosen[currentPageIndex + 1]['isLocked'] = false;
        });
      }

      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset('assets/animations/Celebration.json',
                    repeat: true),
                const SizedBox(height: 20),
                const Text(
                  'Congratulations!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'You scored $score/${selectedQuestions.length} and passed the quiz!',
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'The next chapter is unlocked!',
                  style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const DefaultScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text('Close'),
              ),
            ],
          );
        },
      );
    } else {
      // Display failure dialog
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Your Results'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Score: $score/${selectedQuestions.length}'),
                const SizedBox(height: 10),
                for (var i = 0; i < selectedAnswers.length; i++)
                  Text(
                    'Question ${i + 1}: ${selectedAnswers[i] ?? "Not answered"} - '
                    '${correctAnswers[i] ? 'Correct' : 'Incorrect'}',
                  ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => RandomQuestionsPage(
                        questions: widget.questions,
                        CurrentPage: widget.CurrentPage,
                        TrackChosen: widget.TrackChosen,
                      ),
                    ),
                  );
                },
                child: const Text('Try Again'),
              ),
            ],
          );
        },
      );
    }
  }
}
