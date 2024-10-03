import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sessiontask/screens/SetNewPass.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

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
              "OTP Verifing",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Enter OTP we have sent  your number",
              maxLines: 2,
            ),
            const SizedBox(height: 40),
            OtpTextField(
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setnewpass()));
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
