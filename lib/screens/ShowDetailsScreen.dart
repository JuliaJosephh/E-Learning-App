import 'package:flutter/material.dart';
import 'package:sessiontask/Tracks/TrackShowDetails.dart';
import 'package:sessiontask/constants/constants.dart';

class TrackDetailsPage extends StatelessWidget {
  final String courseTitle;

  const TrackDetailsPage({super.key, required this.courseTitle});

  @override
  Widget build(BuildContext context) {
    final trackInfo = trackShowDetails[courseTitle];

    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(courseTitle,
            style: const TextStyle(fontSize: 16, color: Colors.white)),
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[300]?.withOpacity(0.4), // Baby blue color
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Track Overview',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Languages Section
              const Text(
                'Languages',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              const SizedBox(height: 10),
              Text(
                trackInfo['languages'].join(', '),
                style: const TextStyle(fontSize: 18, color: Colors.black54),
              ),
              const SizedBox(height: 20),

              // Learning Outcomes Section
              const Text(
                'Learning Outcomes',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                width: double.infinity, // Full width of the screen
                height:
                    screenHeight * 0.5, // Set height to 50% of screen height
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (var outcome in trackInfo['learningOutcomes'])
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.check_circle,
                                  color: backgroundColor),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  outcome,
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.black54),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
