const List<Map<String, dynamic>> dartContent = [
  {
    'title': '1. Introduction to Dart',
    'content': '''
Dart is an open-source, general-purpose programming language developed by Google. It is optimized for building mobile, desktop, server, and web applications, with a primary focus on front-end development using frameworks like Flutter.

Why Dart?
• Designed for UI development: Dart’s syntax and features are optimized for building smooth, fast, and responsive user interfaces.
• Strong typing: Dart uses static typing, which helps catch errors at compile time rather than at runtime.
• High performance: Dart compiles to native machine code for mobile and desktop apps and to JavaScript for web apps, ensuring high performance.
• Productive development: Features like Hot Reload in Flutter allow for faster development cycles.
''',
    'code': null,
  },
  {
    'title': '2. Dart Basics',
    'content': '''
Dart has a clean and easy-to-read syntax that feels familiar to developers coming from languages like JavaScript or Java.

1. Variables and Data Types:
Dart is strongly typed but also supports type inference, meaning you can declare variables with or without explicitly specifying types.

Key points:
• Variables can be declared with or without types.
• Dart supports basic data types like int, double, String, and bool.
''',
    'code': '''
// Declaring variables
var name = 'John'; 
String city = 'Cairo';
int age = 21;
double height = 5.9;
bool isStudent = true;
String message = 'Hello, Dart!';

// Type inference
var isActive = true; // Dart infers the type as bool
''',
  },
  {
    'title': '3. Control Flow',
    'content': '''
Dart supports common control flow structures like if-else, switch-case, and loops (for, while, and do-while).

Key points:
• Use if-else for decision making.
• Loops like for, while are used to iterate over a block of code.
• Switch-case is used for multiple conditional checks.
''',
    'code': '''
// If-else statement
if (age > 18) {
  print('Adult');
} else {
  print('Minor');
}

// For loop
for (var i = 0; i < 5; i++) {
  print(i);
}

// Switch-case statement
var day = 1;
switch (day) {
  case 1:
    print('Monday');
    break;
  case 2:
    print('Tuesday');
    break;
  default:
    print('Invalid day');
}
''',
  },
  {
    'title': '4. Functions',
    'content': '''
In Dart, functions are first-class objects, meaning they can be assigned to variables, passed as arguments, and returned from other functions.

Key points:
• Functions can be defined with parameters and return values.
• Arrow functions provide a short syntax for single-expression functions.
• Optional parameters allow flexibility in function calls.
''',
    'code': '''
// Defining a function
int add(int a, int b) {
  return a + b;
}

// Arrow function
int subtract(int a, int b) => a - b;

// Optional parameters
void greet(String name, [String message = 'Welcome']) {
  print('\$name, \$message');
}

// Function call examples
var result = add(10, 5); // returns 15
greet('John'); // prints: John, Welcome
greet('John', 'Good morning!'); // prints: John, Good morning!
''',
  },
  {
    'title': '5. Object-Oriented Programming (OOP) in Dart',
    'content': '''
Dart is an object-oriented language, supporting key OOP concepts like classes, inheritance, and polymorphism.

Key points:
• Classes are blueprints for creating objects.
• Constructors are used to initialize objects.
• Inheritance allows extending a class to create specialized behavior.
''',
    'code': '''
// Defining a class
class Car {
  String brand;
  int year;

  // Constructor
  Car(this.brand, this.year);

  // Method
  void drive() {
    print('\$brand is driving');
  }
}

// Inheritance example
class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(String brand, int year, this.batteryLife) : super(brand, year);

  @override
  void drive() {
    super.drive();
    print('Battery life: \$batteryLife%');
  }
}

// Example usage
var myCar = Car('Toyota', 2020);
myCar.drive(); // Output: Toyota is driving

var tesla = ElectricCar('Tesla', 2021, 100);
tesla.drive(); // Output: Tesla is driving, Battery life: 100%
''',
  },
  {
    'title': '6. Error Handling in Dart',
    'content': '''
Dart provides exception handling using try-catch blocks to manage errors gracefully.

Key points:
• Wrap risky code inside try-catch blocks.
• Catch exceptions using the catch block, and use finally to execute code after the try-catch block.
''',
    'code': '''
// Error handling with try-catch
try {
  int result = 10 ~/ 0; // Integer division by zero
} catch (e) {
  print('Error: \$e');
} finally {
  print('This will always execute');
}
''',
  },
  {
    'title': '7. Asynchronous Programming',
    'content': '''
Dart supports asynchronous programming using `async` and `await`, making it easier to perform non-blocking operations like I/O or network requests.

Key points:
• Use async functions to perform long-running tasks.
• Await pauses execution until a Future completes.
''',
    'code': '''
// Asynchronous function
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data received!';
}

// Using async-await
void main() async {
  print('Fetching data...');
  var data = await fetchData();
  print(data); // Output after 2 seconds: Data received!
}
''',
  },
];
