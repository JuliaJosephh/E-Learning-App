const List<Map<String, dynamic>> flutterWidgetsContent = [
  {
    'title': '1. Text Widget',
    'content': '''
The `Text` widget is used to display a string of text with a single style.

Key points:
• It supports multiple properties such as style, textAlign, and overflow.
• The text style can be customized using the `TextStyle` class.
''',
    'code': '''
Text(
  'Hello, Flutter!',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
  textAlign: TextAlign.center,
)
''',
  },
  {
    'title': '2. Container Widget',
    'content': '''
The `Container` widget is a versatile widget that can contain a child widget and apply styling, padding, margins, and constraints.

Key points:
• It allows you to customize its appearance with properties like padding, margin, decoration, and alignment.
''',
    'code': '''
Container(
  padding: EdgeInsets.all(16),
  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  decoration: BoxDecoration(
    color: Colors.greenAccent,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Text('This is a container'),
)
''',
  },
  {
    'title': '3. Column and Row Widgets',
    'content': '''
`Column` and `Row` widgets are used to arrange children vertically or horizontally.

Key points:
• `Column` arranges widgets vertically, while `Row` arranges widgets horizontally.
• You can align and position widgets using properties like `MainAxisAlignment` and `CrossAxisAlignment`.
''',
    'code': '''
// Column example
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('First Item'),
    Text('Second Item'),
    Text('Third Item'),
  ],
)

// Row example
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Icon(Icons.star, color: Colors.yellow),
    Icon(Icons.star, color: Colors.yellow),
    Icon(Icons.star, color: Colors.yellow),
  ],
)
''',
  },
  {
    'title': '4. Image Widget',
    'content': '''
The `Image` widget is used to display images in your Flutter app.

Key points:
• It supports multiple image sources, such as assets, network, and file.
• You can customize how the image fits using the `fit` property.
''',
    'code': '''
// Display an image from assets
Image.asset(
  'assets/images/flutter_logo.png',
  width: 100,
  height: 100,
  fit: BoxFit.cover,
)

// Display an image from the network
Image.network(
  'https://flutter.dev/images/flutter-logo-sharing.png',
  width: 100,
  height: 100,
)
''',
  },
  {
    'title': '5. Button Widgets',
    'content': '''
Flutter provides several types of buttons such as `ElevatedButton`, `TextButton`, and `IconButton`.

Key points:
• `ElevatedButton` is a material button that is elevated when pressed.
• `TextButton` is a simple flat button without any elevation.
• `IconButton` allows you to display an icon as a button.
''',
    'code': '''
// ElevatedButton
ElevatedButton(
  onPressed: () {
    print('Elevated button pressed');
  },
  child: Text('Press Me'),
)

// TextButton
TextButton(
  onPressed: () {
    print('Text button pressed');
  },
  child: Text('Tap Me'),
)

// IconButton
IconButton(
  icon: Icon(Icons.thumb_up),
  onPressed: () {
    print('Icon button pressed');
  },
)
''',
  },
  {
    'title': '6. Scaffold Widget',
    'content': '''
The `Scaffold` widget provides a framework for the structure of a Flutter app, including the app bar, body, drawer, floating action button, and bottom navigation bar.

Key points:
• The body is where the main content is placed.
• You can add an `AppBar` for navigation and a `FloatingActionButton` for key actions.
''',
    'code': '''
Scaffold(
  appBar: AppBar(
    title: Text('My Flutter App'),
  ),
  body: Center(
    child: Text('Hello, world!'),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      print('FAB pressed');
    },
    child: Icon(Icons.add),
  ),
)
''',
  },
  {
    'title': '7. ListView Widget',
    'content': '''
The `ListView` widget is used to display a scrollable list of items.

Key points:
• `ListView.builder` is useful for displaying large lists efficiently.
• It can be customized with padding, item separation, and scroll direction.
''',
    'code': '''
ListView.builder(
  itemCount: 10,
  itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text('Person \$index'),
      subtitle: Text('Subtitle text'),
    );
  },
)
''',
  },
  {
    'title': '8. Form and TextFormField Widgets',
    'content': '''
The `Form` widget is used to group input fields such as `TextFormField` for validating user input.

Key points:
• `TextFormField` is an input field widget that supports validation.
• You can validate user input using the `validator` property and manage form state with a `GlobalKey<FormState>`.
''',
    'code': '''
final _formKey = GlobalKey<FormState>();

Form(
  key: _formKey,
  child: Column(
    children: [
      TextFormField(
        decoration: InputDecoration(labelText: 'Enter your name'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
      ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            print('Form is valid');
          }
        },
        child: Text('Submit'),
      ),
    ],
  ),
)
''',
  },
  {
    'title': '9. Stack Widget',
    'content': '''
The `Stack` widget allows you to place widgets on top of each other.

Key points:
• You can position child widgets using the `Positioned` widget inside a `Stack`.
• It's useful for overlaying widgets or creating complex layouts.
''',
    'code': '''
Stack(
  children: [
    Container(
      width: 200,
      height: 200,
      color: Colors.blue,
    ),
    Positioned(
      top: 50,
      left: 50,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    ),
  ],
)
''',
  },
  {
    'title': '10. GestureDetector Widget',
    'content': '''
The `GestureDetector` widget detects gestures like taps, swipes, and long presses.

Key points:
• It wraps a widget and responds to gestures such as `onTap`, `onDoubleTap`, and `onLongPress`.
''',
    'code': '''
GestureDetector(
  onTap: () {
    print('Container tapped');
  },
  child: Container(
    width: 200,
    height: 200,
    color: Colors.blue,
    child: Center(
      child: Text('Tap me'),
    ),
  ),
)
''',
  },
];
