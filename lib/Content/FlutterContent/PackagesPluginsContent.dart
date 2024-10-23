const List<Map<String, dynamic>> packagesAndPluginsContent = [
  {
    'title': '1. Introduction to Packages and Plugins',
    'content': '''
In Flutter, packages and plugins are essential for extending the functionality of applications. A package is a reusable library of code, while a plugin is a package that provides access to native device features.

Key points:
• Packages and plugins help reduce development time by providing pre-built functionalities.
• They are hosted on the Dart package repository, `pub.dev`.
''',
    'code': null,
  },
  {
    'title': '2. Using Packages',
    'content': '''
To use a package in your Flutter application, you need to add it as a dependency in your `pubspec.yaml` file.

Key points:
• Ensure you specify the version of the package for compatibility.
• Run `flutter pub get` to download the package.
''',
    'code': '''
// Example pubspec.yaml
dependencies:
  http: ^0.13.4  // Add the package here

// Import the package in your Dart file
import 'package:http/http.dart' as http;
''',
  },
  {
    'title': '3. Creating a Package',
    'content': '''
You can create your own reusable package to share code across multiple projects.

Key points:
• Use the `flutter create --template=package my_package` command to create a new package.
• Organize your code in the `lib` directory.
''',
    'code': '''
// Example structure of a package
my_package/
├── lib/
│   └── my_package.dart
└── pubspec.yaml
''',
  },
  {
    'title': '4. Using Plugins',
    'content': '''
Plugins are special types of packages that enable Flutter to interact with native platform features, such as camera, GPS, and storage.

Key points:
• Plugins include platform-specific code to bridge Flutter and native APIs.
• Use `flutter create --template=plugin my_plugin` to create a new plugin.
''',
    'code': '''
// Example pubspec.yaml for a plugin
dependencies:
  path_provider: ^2.0.6  // A popular plugin for file system access

// Import the plugin in your Dart file
import 'package:path_provider/path_provider.dart';
''',
  },
  {
    'title': '5. Popular Packages and Plugins',
    'content': '''
Here are some commonly used packages and plugins in Flutter development:

1. **http**: A powerful package for making HTTP requests.
2. **provider**: A popular state management package that uses the InheritedWidget.
3. **shared_preferences**: A plugin for storing simple data in key-value pairs.
4. **sqflite**: A SQLite plugin for accessing local databases.
5. **image_picker**: A plugin for selecting images from the gallery or camera.
6. **firebase_core**: Required to integrate Firebase services in your app.
''',
    'code': null,
  },
  {
    'title': '6. Example of Using a Package',
    'content': '''
Let’s see an example of using the `http` package to fetch data from a web API.

Key points:
• Make sure to handle exceptions when making network requests.
''',
    'code': '''
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    print(data);
  } else {
    throw Exception('Failed to load data');
  }
}
''',
  },
  {
    'title': '7. Example of Using a Plugin',
    'content': '''
Here’s how to use the `image_picker` plugin to select an image from the device.

Key points:
• Ensure you handle permissions for accessing the device's camera and gallery.
''',
    'code': '''
import 'package:image_picker/image_picker.dart';

Future<void> pickImage() async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);

  if (image != null) {
    print('Image selected: \${image.path}');
  } else {
    print('No image selected');
  }
}
''',
  },
];
