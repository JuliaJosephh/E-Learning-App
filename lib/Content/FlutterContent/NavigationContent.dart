const List<Map<String, dynamic>> navigationContent = [
  {
    'title': '1. Introduction to Navigation',
    'content': '''
Navigation in Flutter refers to the process of moving between different screens (routes) in an app. Proper navigation is essential for providing a seamless user experience, allowing users to explore and interact with various sections of your app.

Key points:
• Flutter uses a stack-based navigation system, where routes are pushed and popped off the stack.
• There are different ways to manage navigation, from basic to more advanced techniques, depending on the app's complexity.
''',
    'code': null,
  },
  {
    'title': '2. Basic Navigation Using Navigator',
    'content': '''
Flutter provides a `Navigator` widget, which manages a stack of Route objects. You can push new routes onto the stack and pop routes off the stack to return to previous screens.

Key points:
• Use `Navigator.push()` to navigate to a new screen.
• Use `Navigator.pop()` to return to the previous screen.
''',
    'code': '''
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back to Home Screen'),
        ),
      ),
    );
  }
}
''',
  },
  {
    'title': '3. Named Routes',
    'content': '''
Named routes provide a more organized way to manage navigation by defining route names in the MaterialApp. This method makes it easier to navigate between different screens without directly referencing the widget.

Key points:
• Use `Navigator.pushNamed()` to navigate to named routes.
• Define routes in the `MaterialApp` widget's `routes` property.
''',
    'code': '''
void main() {
  runApp(MaterialApp(
    title: 'Named Routes Example',
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/second': (context) => SecondScreen(),
    },
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back to Home Screen'),
        ),
      ),
    );
  }
}
''',
  },
  {
    'title': '4. Passing Arguments',
    'content': '''
You can pass data to a new screen using arguments when navigating. This is useful for sending information between different routes.

Key points:
• Use the constructor of the destination widget to receive arguments.
• Use `Navigator.push()` and pass the arguments through the route settings.
''',
    'code': '''
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(message: 'Hello from Home Screen!'),
              ),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String message;

  SecondScreen({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Text(message, style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
''',
  },
  {
    'title': '5. Returning Data from a Screen',
    'content': '''
Sometimes you may want to return data back to the previous screen. You can achieve this by using the `Navigator.pop()` method with the return value.

Key points:
• Use the second parameter of `Navigator.pop()` to return data.
• Handle the returned data in the previous screen using `await`.
''',
    'code': '''
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
            // Handle the result
            print('Returned data: \$result');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Hello from Second Screen!');
          },
          child: Text('Return to Home Screen'),
        ),
      ),
    );
  }
}
''',
  },
  {
    'title': '6. Using the `Navigator` 2.0 API',
    'content': '''
The `Navigator` 2.0 API allows for more advanced navigation scenarios, such as deep linking and managing the navigation stack more flexibly.

Key points:
• It uses a declarative approach, where you define the entire navigation stack.
• Better suited for complex applications with nested navigation.
''',
    'code': '''
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AppRouterDelegate(),
      routeInformationParser: AppRouteInformationParser(),
    );
  }
}

class AppRouterDelegate extends RouterDelegate<AppRoutePath> with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
  final List<AppRoutePath> _stack = [AppRoutePath.home];

  @override
  AppRoutePath get currentConfiguration => _stack.last;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        MaterialPage(child: HomeScreen()),
        if (_stack.last == AppRoutePath.second) MaterialPage(child: SecondScreen()),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) return false;
        _stack.removeLast();
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath path) async {
    _stack.clear();
    _stack.add(path);
  }
}
''',
  },
];
