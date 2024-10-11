const List<Map<String, dynamic>> apiIntegrationContent = [
  {
    'title': '1. Introduction to API Integration',
    'content': '''
API integration allows your Flutter application to communicate with external services or databases. This enables you to fetch, send, and manipulate data from remote servers, allowing for dynamic and interactive applications.

Key points:
• APIs (Application Programming Interfaces) define how software components interact.
• REST (Representational State Transfer) is a common architectural style for building APIs.
• JSON (JavaScript Object Notation) is the most widely used format for data exchange between APIs and applications.
''',
    'code': null,
  },
  {
    'title': '2. Making HTTP Requests',
    'content': '''
To integrate with APIs in Flutter, you will typically use the `http` package, which provides a simple way to make HTTP requests and handle responses.

Key points:
• Include the `http` package in your `pubspec.yaml`.
• Use `http.get()`, `http.post()`, etc., to make API calls.
''',
    'code': '''
// Add the dependency in pubspec.yaml
dependencies:
  http: ^0.14.0

// Import the http package
import 'package:http/http.dart' as http;
''',
  },
  {
    'title': '3. GET Request Example',
    'content': '''
A GET request is used to retrieve data from an API. It is a simple and common way to fetch information.

Key points:
• Use `http.get()` to perform a GET request.
• Handle the response and parse the data.
''',
    'code': '''
Future<void> fetchData() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    // If the server returns an OK response, parse the JSON.
    List<dynamic> data = jsonDecode(response.body);
    print(data);
  } else {
    // If the response was not OK, throw an exception.
    throw Exception('Failed to load data');
  }
}
''',
  },
  {
    'title': '4. POST Request Example',
    'content': '''
A POST request is used to send data to an API. It is commonly used for creating new resources on the server.

Key points:
• Use `http.post()` to perform a POST request.
• Send data as JSON in the body of the request.
''',
    'code': '''
Future<void> createPost() async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': 'foo',
      'body': 'bar',
      'userId': '1',
    }),
  );

  if (response.statusCode == 201) {
    // If the server returns a created response, parse the JSON.
    var data = jsonDecode(response.body);
    print(data);
  } else {
    // If the response was not created, throw an exception.
    throw Exception('Failed to create post');
  }
}
''',
  },
  {
    'title': '5. Handling JSON Responses',
    'content': '''
When making API requests, responses are often in JSON format. You can use the `dart:convert` library to decode JSON data into Dart objects.

Key points:
• Use `jsonDecode()` to parse JSON strings into Dart objects.
• Define models to represent the data structure.
''',
    'code': '''
import 'dart:convert';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({required this.userId, required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

Future<List<Post>> fetchPosts() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => Post.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load posts');
  }
}
''',
  },
  {
    'title': '6. Error Handling',
    'content': '''
When making API calls, it's crucial to handle errors gracefully to ensure a good user experience.

Key points:
• Use try-catch blocks to catch exceptions.
• Provide feedback to users in case of errors.
''',
    'code': '''
Future<void> fetchDataWithErrorHandling() async {
  try {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      print(data);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: \$e');
  }
}
''',
  },
  {
    'title': '7. Using FutureBuilder for API Calls',
    'content': '''
`FutureBuilder` is a widget that helps you build a UI based on the result of an asynchronous operation. It's perfect for integrating API calls in your Flutter apps.

Key points:
• Use `FutureBuilder` to handle loading and error states in your UI.
• Pass the future (API call) to `FutureBuilder` and define how to build the UI based on the result.
''',
    'code': '''
class PostList extends StatelessWidget {
  Future<List<Post>> fetchPosts() async {
    // Fetch posts logic
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
      future: fetchPosts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: \${snapshot.error}');
        } else {
          final posts = snapshot.data;
          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(posts[index].title),
                subtitle: Text(posts[index].body),
              );
            },
          );
        }
      },
    );
  }
}
''',
  },
];
