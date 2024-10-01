import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/OTP.dart';

class Verifywnum extends StatelessWidget {
  const Verifywnum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Forget Password",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Please enter your phone number. You will receive a OTP to set a new password via phone number",
              maxLines: 2,
            ),
            const SizedBox(height: 40),

            // **Improved Row for Icon and TextField alignment**
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.black, // Adjust color as needed
                    ),
                    SizedBox(width: 10.0), // Add some horizontal spacing
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your Phone Number",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Otp()));
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(backgroundColor)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Send OTP",
                  style: poppins.copyWith(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
