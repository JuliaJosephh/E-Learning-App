import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import "../widgets/";

class CourseDetailsPage extends StatelessWidget {
  final String courseTitle;
  const CourseDetailsPage({super.key, required this.courseTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
        title: Text(
          courseTitle,
          style: poppins.copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Chapter List",
                          style: poppins.copyWith(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: GreyBoxColor,
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            children: [
                              buildlockedbtn(context, 1, "data types", true),
                              SizedBox(height: 10,),
                                buildlockedbtn(context, 1, "data types", false),

                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}