import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sessiontask/Content/EBooksAndArticles.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AIEbooksAndArticlesPage extends StatefulWidget {
  const AIEbooksAndArticlesPage({super.key});

  @override
  AIEbooksAndArticlesPageState createState() => AIEbooksAndArticlesPageState();
}

class AIEbooksAndArticlesPageState extends State<AIEbooksAndArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Ebooks and Articles',
              style: TextStyle(fontSize: 16, color: Colors.white)),
          centerTitle: true,
          backgroundColor: backgroundColor,
        ),
        body: ListView.builder(
          itemCount: EBookAndArticles.length,
          itemBuilder: (context, index) {
            final item = EBookAndArticles[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Image.asset(
                                item['image'],
                                scale: 17,
                              ),
                            )
                          ],
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          launchUrl(Uri.parse(item['url']),
                              mode: LaunchMode.externalApplication);
                        },
                        child: item['icon'],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
