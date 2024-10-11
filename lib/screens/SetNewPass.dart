import 'package:flutter/material.dart';
import 'package:sessiontask/constants/constants.dart';
import 'package:sessiontask/screens/LoginPage.dart';
import 'package:sessiontask/widgets/BuildPasswordField.dart';

class Setnewpass extends StatelessWidget {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  Setnewpass({super.key});
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0,top: 20),
            child: Text(
              "Set Password",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
      
          const SizedBox(height: 40),
      PasswordField(label: "New Password", controller: _passwordController),
        const SizedBox(
            height: 40,
          ),
      PasswordField(label: "Confirm Password", controller:_confirmPasswordController ),
            
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Login()));
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(backgroundColor)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Reset Password",
                  style: poppins.copyWith(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}