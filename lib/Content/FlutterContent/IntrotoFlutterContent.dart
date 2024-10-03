// FlutterContent.dart
const List<Map<String, dynamic>> flutterContent = [
  {
    'title': '1. Introduction to Flutter',
    'content': '''
1.1 What is Flutter?
Flutter is an open-source UI software development toolkit created by Google. It allows developers to build high-quality, natively compiled applications for mobile (iOS, Android), web, and desktop (Windows, macOS, Linux) from a single codebase.

What Makes Flutter Unique?
• Single Codebase for Multiple Platforms: Write one set of code and deploy it across multiple platforms without changing the core logic.
• Native Performance: The Flutter engine compiles Dart code to native ARM or x86 machine code, resulting in high-performance apps.
• Fast Development: With features like Hot Reload, developers can instantly see the changes in their app without needing to restart it, which speeds up the development process.
''',
    'code': null,
  },
  {
    'title': '2. Installation',
    'content': '''
1.2 Flutter Installation and Setup Guide
1. Installation Links:
• Windows Installation: Get Started with Flutter on Windows
• macOS Installation: Get Started with Flutter on macOS
• Linux Installation: Get Started with Flutter on Linux

2. System Requirements:
• Operating System:
  - Windows 7+
  - macOS 10.14+
  - Linux (64-bit)
• Disk Space: Minimum of 2.8 GB free space.
• Tools:
  - Command-line tools (e.g., Git)
  - IDE: Install either Android Studio or Visual Studio Code with Flutter and Dart plugins.

3. Installing Flutter SDK:
A step-by-step guide on downloading and configuring the Flutter SDK:
• Visit the Flutter installation link for your OS.
• Follow the instructions to download the SDK and configure your environment.
• Run flutter doctor in the terminal to check for missing dependencies.

4. Setting Up IDE:
• Visual Studio Code:
  1. Open VS Code.
  2. Go to Extensions and install the Flutter and Dart plugins.
  3. Restart VS Code to complete the installation.
• Android Studio:
  1. Open Android Studio.
  2. Go to Settings > Plugins and search for Flutter.
  3. Install the Flutter plugin (it will automatically install Dart).
  4. Configure the Android Emulator for testing your apps.

5. Creating a New Flutter Project:
A hands-on tutorial for beginners:
• Open a terminal or command prompt.
• Run the following command to create your first Flutter project:

    flutter create my_cross_platform_app

• This will generate and run a simple "Hello World" Flutter app on your emulator or connected device.
''',
    'code': null,
  },
  {
    'title': '3. Overview of Flutter Project Structure',
    'content': '''
Once the project is created, you'll encounter several folders and files:
• lib/: Contains the main code for your Flutter application (e.g., main.dart).
• assets/: Stores images, fonts, and other media files.
• pubspec.yaml: The configuration file where you define project dependencies, assets, and packages.
''',
    'code': null,
  },
  {
    'title': '4. Advantages of Flutter',
    'content': '''
Flutter has multiple advantages that have contributed to its widespread adoption:

• Hot Reload: One of the most appealing features for developers, Hot Reload allows you to instantly reflect changes in your app without restarting. You can update the code and see the changes within milliseconds, keeping the app’s state intact. This dramatically speeds up testing and debugging.
• Cross-Platform Capabilities: Flutter enables developers to write a single codebase for Android, iOS, web, and desktop apps.
• Customizable Widgets for UI Consistency: Flutter offers a rich set of customizable widgets that adhere to Material Design (Android) and Cupertino (iOS) guidelines.
• High Performance with Native Compilation: Flutter compiles Dart code directly into native machine code using AOT (Ahead-of-Time) compilation for mobile and desktop.

Example: Animations in Flutter are smooth because of its Skia Graphics Engine, which renders UIs at up to 60 FPS.
''',
    'code': '''
ElevatedButton(
  onPressed: () {},
  child: Text('Click me!'),
);

ElevatedButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.blue),
  ),
  onPressed: () {},
  child: Text('Custom Button'),
);
''',
  },
  {
    'title': '5. Why Choose Flutter?',
    'content': '''
The popularity of Flutter has surged since its release. It is used by both small startups and large companies to develop high-performance apps.

Some companies that have adopted Flutter include:
• Google: Uses Flutter for internal apps and the Google Ads app.
• Alibaba: Built their international app using Flutter.
• BMW: Developed the My BMW app with Flutter.

Community and Ecosystem:
• Rich Ecosystem: Flutter has many open-source packages available on pub.dev.
• Growing Developer Community: Flutter's growing community means more resources, tutorials, and third-party plugins are available for new developers.
''',
    'code': null,
  },
];
