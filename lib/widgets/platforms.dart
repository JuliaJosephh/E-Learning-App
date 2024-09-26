import 'package:flutter/material.dart';

class SignUpPlatform extends StatelessWidget {
  const SignUpPlatform({
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
                border: Border.all(width: 1, color: Colors.black38)),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/apple-logo.png",
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
                border: Border.all(width: 1, color: Colors.black38)),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/google-logo.png",
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
                border: Border.all(width: 1, color: Colors.black38)),
            child: IconButton(
              onPressed: () {},
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
