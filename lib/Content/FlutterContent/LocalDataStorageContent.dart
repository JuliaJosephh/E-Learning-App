const List<Map<String, dynamic>> localDataStorageContent = [
  {
    'title': '1. Introduction to Local Data Storage',
    'content': '''
Local data storage allows Flutter applications to save data on the device, enabling offline capabilities and faster access to frequently used data. Various local storage solutions are available, including Shared Preferences, SQLite, and Hive.

Key points:
• Local storage is essential for persisting user preferences, settings, and application data.
• Flutter provides multiple options to handle local storage based on complexity and use cases.
''',
    'code': null,
  },
  {
    'title': '2. Using Shared Preferences',
    'content': '''
Shared Preferences is a simple key-value store for storing small amounts of data, such as user preferences or settings.

Key points:
• Use the `shared_preferences` package to access Shared Preferences.
• Ideal for storing primitive data types like int, double, String, and bool.
''',
    'code': '''
// Add the dependency in pubspec.yaml
dependencies:
  shared_preferences: ^2.0.6

// Import the package
import 'package:shared_preferences/shared_preferences.dart';
''',
  },
  {
    'title': '3. Saving Data with Shared Preferences',
    'content': '''
You can save data using the `set` methods provided by Shared Preferences. These methods are asynchronous and return a Future.

Key points:
• Use `setString`, `setInt`, `setDouble`, etc., to store data.
''',
    'code': '''
Future<void> saveData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('username', 'JohnDoe');
  await prefs.setInt('age', 30);
}
''',
  },
  {
    'title': '4. Retrieving Data with Shared Preferences',
    'content': '''
To retrieve data from Shared Preferences, use the `get` methods, which return the stored value or null if the key does not exist.

Key points:
• Use `getString`, `getInt`, `getDouble`, etc., to retrieve data.
''',
    'code': '''
Future<void> loadData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? username = prefs.getString('username');
  int? age = prefs.getInt('age');

  print('Username: \$username, Age: \$age');
}
''',
  },
  {
    'title': '5. Using SQLite for Local Data Storage',
    'content': '''
SQLite is a robust relational database management system that can store larger and more complex datasets compared to Shared Preferences.

Key points:
• Use the `sqflite` package to integrate SQLite in your Flutter application.
• Ideal for applications that require structured data storage and complex queries.
''',
    'code': '''
// Add the dependency in pubspec.yaml
dependencies:
  sqflite: ^2.0.0+4
  path: ^1.8.0

// Import the packages
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
''',
  },
  {
    'title': '6. Creating a Database with SQLite',
    'content': '''
You can create a database and tables to store structured data.

Key points:
• Use `openDatabase` to create or open a database.
• Define tables using SQL commands.
''',
    'code': '''
Future<Database> initializeDatabase() async {
  String path = join(await getDatabasesPath(), 'my_database.db');
  return await openDatabase(
    path,
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY, username TEXT, age INTEGER)',
      );
    },
    version: 1,
  );
}
''',
  },
  {
    'title': '7. Inserting Data into SQLite',
    'content': '''
To insert data into an SQLite table, use the `insert` method.

Key points:
• Use `insert` to add new records to a table.
''',
    'code': '''
Future<void> insertUser(String username, int age) async {
  final db = await initializeDatabase();
  await db.insert(
    'users',
    {'username': username, 'age': age},
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}
''',
  },
  {
    'title': '8. Retrieving Data from SQLite',
    'content': '''
You can retrieve data from SQLite using the `query` method.

Key points:
• Use `query` to fetch records from a table.
''',
    'code': '''
Future<List<Map<String, dynamic>>> fetchUsers() async {
  final db = await initializeDatabase();
  return await db.query('users');
}
''',
  },
  {
    'title': '9. Using Hive for Local Data Storage',
    'content': '''
Hive is a lightweight and fast NoSQL database that stores data in a binary format, making it suitable for local data storage.

Key points:
• Hive is simple to set up and works well for unstructured data.
• Great for storing JSON-like data.
''',
    'code': '''
// Add the dependency in pubspec.yaml
dependencies:
  hive: ^2.0.0
  hive_flutter: ^1.0.0

// Import the packages
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
''',
  },
  {
    'title': '10. Initializing Hive',
    'content': '''
Before using Hive, you need to initialize it and open a box for storing data.

Key points:
• Use `Hive.initFlutter()` to initialize Hive for Flutter applications.
''',
    'code': '''
Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('myBox');
  runApp(MyApp());
}
''',
  },
  {
    'title': '11. Saving Data with Hive',
    'content': '''
You can save data in a Hive box using the `put` method.

Key points:
• Use `put` to store data in the box.
''',
    'code': '''
Future<void> saveData() async {
  var box = Hive.box('myBox');
  await box.put('username', 'JohnDoe');
  await box.put('age', 30);
}
''',
  },
  {
    'title': '12. Retrieving Data with Hive',
    'content': '''
To retrieve data from a Hive box, use the `get` method.

Key points:
• Use `get` to fetch stored data.
''',
    'code': '''
void loadData() {
  var box = Hive.box('myBox');
  String? username = box.get('username');
  int? age = box.get('age');

  print('Username: \$username, Age: \$age');
}
''',
  },
];
