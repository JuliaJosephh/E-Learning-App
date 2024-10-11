const List<Map<String, dynamic>> stateManagementContent = [
  {
    'title': '1. Introduction to State Management',
    'content': '''
State management refers to the way you manage and update the UI when data (state) changes. In Flutter, state management is crucial because it helps keep your UI in sync with the underlying data.

Key points:
• Flutter's reactive nature means that whenever the state changes, the UI automatically updates.
• Different approaches exist to manage state, ranging from simple to complex solutions, depending on the app’s needs.
''',
    'code': null,
  },
  {
    'title': '2. StatefulWidget (Basic State Management)',
    'content': '''
`StatefulWidget` is the simplest form of state management in Flutter. It allows you to store local state within a widget and rebuild the UI when the state changes.

Key points:
• `setState()` is used to update the state and refresh the widget.
• Best suited for managing local state that doesn't need to be shared across the app.
''',
    'code': '''
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatefulWidget Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: \$_counter', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
''',
  },
  {
    'title': '3. InheritedWidget',
    'content': '''
`InheritedWidget` is a low-level widget for sharing state across the widget tree. It is useful when you want to propagate data from parent widgets down to their children.

Key points:
• It allows for efficient updates without needing to pass data through constructors.
• Not the easiest to implement for large apps but provides more control than `StatefulWidget`.
''',
    'code': '''
class CounterProvider extends InheritedWidget {
  final int counter;
  final Function() increment;

  CounterProvider({
    required Widget child,
    required this.counter,
    required this.increment,
  }) : super(child: child);

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return counter != oldWidget.counter;
  }
}

class InheritedWidgetExample extends StatefulWidget {
  @override
  _InheritedWidgetExampleState createState() => _InheritedWidgetExampleState();
}

class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counter: _counter,
      increment: _incrementCounter,
      child: Scaffold(
        appBar: AppBar(title: Text('InheritedWidget Example')),
        body: CounterWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);
    return Center(
      child: Text('Counter: \${provider?.counter}', style: TextStyle(fontSize: 24)),
    );
  }
}
''',
  },
  {
    'title': '4. Provider (Popular Approach)',
    'content': '''
`Provider` is a popular state management solution in Flutter. It wraps `InheritedWidget` to make it easier to share and manage state across the widget tree.

Key points:
• It provides simple APIs for state management.
• It integrates well with the Flutter widget lifecycle.
• It supports a wide range of state management techniques, from simple value providers to more complex ChangeNotifier and StreamProviders.
''',
    'code': '''
class CounterModel with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}

class ProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: Scaffold(
        appBar: AppBar(title: Text('Provider Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<CounterModel>(
                builder: (context, counterModel, child) {
                  return Text('Counter: \${counterModel.counter}', style: TextStyle(fontSize: 24));
                },
              ),
              ElevatedButton(
                onPressed: () => context.read<CounterModel>().increment(),
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
''',
  },
  {
    'title': '5. Riverpod',
    'content': '''
`Riverpod` is a more modern state management library that improves on `Provider` by offering compile-time safety and removing some limitations of `Provider`.

Key points:
• It offers better performance with lazy initialization.
• State can be shared easily and it’s safer to use due to compile-time checks.
''',
    'code': '''
final counterProvider = StateProvider<int>((ref) => 0);

class RiverpodExample extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Example')),
      body: Center(
        child: Text('Counter: \$counter', style: TextStyle(fontSize: 24)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).state++,
        child: Icon(Icons.add),
      ),
    );
  }
}
''',
  },
  {
    'title': '6. Bloc/Cubit (Business Logic Component)',
    'content': '''
`Bloc` is a more advanced state management solution that separates business logic from UI, making the code more testable and maintainable.

Key points:
• `Bloc` follows the event-driven architecture, where events trigger state changes, and state is rebuilt based on those events.
• `Cubit` is a simpler version of `Bloc` for managing simpler use cases without events.
''',
    'code': '''
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
}

class BlocExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(title: Text('Bloc/Cubit Example')),
        body: BlocBuilder<CounterCubit, int>(
          builder: (context, count) {
            return Center(
              child: Text('Counter: \$count', style: TextStyle(fontSize: 24)),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<CounterCubit>().increment(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
''',
  },
  {
    'title': '7. GetX',
    'content': '''
`GetX` is a lightweight, easy-to-use state management solution for Flutter. It provides a simple syntax, reactive programming features, and dependency injection.

Key points:
• `GetX` is known for its performance and simplicity.
• It includes features like reactive state management, routing, and dependency injection.
''',
    'code': '''
class CounterController extends GetxController {
  var counter = 0.obs;

  void increment() => counter++;
}

class GetXExample extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Example')),
      body: Center(
        child: Obx(() => Text('Counter: \${controller.counter}', style: TextStyle(fontSize: 24))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
''',
  },
];
