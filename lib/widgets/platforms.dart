import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class signUpPlatform extends StatelessWidget {
  const signUpPlatform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    width: 1, color: Theme.of(context).colorScheme.secondary)),
            child: IconButton(
              onPressed: () async {
                await launchURL("https://appleid.apple.com/");
              },
              icon: Image.asset("images/apple-logo.png",
                  height: 30,
                  width: 30,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    width: 1, color: Theme.of(context).colorScheme.secondary)),
            child: IconButton(
              onPressed: () async {
                await launchURL("https://accounts.google.com/login");
              },
              icon: Image.asset(
                "images/google.png",
                height: 30,
                width: 30,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    width: 1, color: Theme.of(context).colorScheme.secondary)),
            child: IconButton(
              onPressed: () async {
                await launchURL("https://www.facebook.com/");
              },
              icon: Image.asset(
                "images/facebook-logo.png",
                height: 30,
                width: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Future<void> launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
