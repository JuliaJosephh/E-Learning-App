import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/widgets/BuildButtonLocked.dart';

class CourseDetailsPage extends StatelessWidget {
  final String courseTitle;
  final List<Map<String, dynamic>> chapters;

  const CourseDetailsPage({
    super.key,
    required this.courseTitle,
    required this.chapters,
  });

  @override
  Widget build(BuildContext context) {
    final double availableHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          courseTitle,
          style: poppins.copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Course Chapters List",
                      style: poppins.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      height: availableHeight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: chapters.length > 6
                          ? ListView.builder(
                              itemCount: chapters.length,
                              itemBuilder: (context, index) {
                                final chapter = chapters[index];
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: buildLockedButton(
                                    context,
                                    chapter['index'],
                                    chapter['title'],
                                    chapter['isLocked'],
                                    chapter['Page'],
                                  ),
                                );
                              },
                            )
                          : Column(
                              children: chapters.map((chapter) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: buildLockedButton(
                                    context,
                                    chapter['index'],
                                    chapter['title'],
                                    chapter['isLocked'],
                                    chapter['Page'],
                                  ),
                                );
                              }).toList(),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
