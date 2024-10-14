//AI
import 'package:sessiontask/screens/AIPages/PythonPage.dart';
import 'package:sessiontask/screens/AIPages/PandasPage.dart';
import 'package:sessiontask/screens/AIPages/NumpyPage.dart';
import 'package:sessiontask/screens/AIPages/MachineLearningPage.dart';

//web
import 'package:sessiontask/screens/WebPages/HtmlPage.dart';
import 'package:sessiontask/screens/WebPages/JavaScriptPage.dart';
import 'package:sessiontask/screens/WebPages/JavaScriptPage.dart';
import 'package:sessiontask/screens/WebPages/PHPPage.dart';
import 'package:sessiontask/screens/WebPages/CSSPage.dart';

//Flutter
import 'package:sessiontask/screens/MobilePages/IntroToFlutterPage.dart';
import 'package:sessiontask/screens/MobilePages/DartProgrammingPage.dart';
import 'package:sessiontask/screens/MobilePages/FlutterWidgetsPage.dart';
import 'package:sessiontask/screens/MobilePages/APIIntegrationPage.dart';
import 'package:sessiontask/screens/MobilePages/FlutterpackagesPluginsPage.dart';
import 'package:sessiontask/screens/MobilePages/LocalDataStoragePage.dart';
import 'package:sessiontask/screens/MobilePages/NavigationPage.dart';
import 'package:sessiontask/screens/MobilePages/PublishingToAppStorePage.dart';
import 'package:sessiontask/screens/MobilePages/StateManagementPage.dart';

// Define the chapters for each course with specific pages
final List<Map<String, dynamic>> aiChapters = [
  {
    'index': 1,
    'title': 'Python Basics',
    'isLocked': false,
    'Page': const PythonPage(),
    'Page': const PythonPage(),
  },
  {
    'index': 2,
    'title': 'Python libraries: Pandas',
    'isLocked': false,
    'Page': const PandasPage()
  },
  {
    'index': 3,
    'title': 'Python libraries: NumPy',
    'isLocked': false,
    'Page': const NumPyPage()
  },
  {
    'index': 4,
    'title': 'Machine Learning',
    'isLocked': false,
    'Page': const MachineLearningPage()
  },
];

final List<Map<String, dynamic>> webDevChapters = [
  {'index': 1, 'title': 'HTML', 'isLocked': false, 'Page': const HTMLPage()},
  {'index': 2, 'title': 'CSS', 'isLocked': true, 'Page': const CSSPage()},
  {
    'index': 3,
    'title': 'JavaScript ',
    'isLocked': true,
    'Page': const JavaScriptPage()
  },
  {'index': 4, 'title': 'PHP', 'isLocked': false, 'Page': const PHPPage()},
];

final List<Map<String, dynamic>> mobileDevChapters = [
  {
    'index': 1,
    'title': 'Intro to Flutter',
    'isLocked': false,
    'Page': const IntroToFlutterPage()
  },
  {
    'index': 2,
    'title': 'Dart Programming',
    'isLocked': false,
    'Page': const DartProgrammingPage()
  },
  {
    'index': 3,
    'title': 'Flutter widgets',
    'isLocked': false,
    'Page': const FlutterWidgetsPage()
  },
  {
    'index': 4,
    'title': 'State Management',
    'isLocked': false,
    'Page': const StateManagementPage()
  },
  {
    'index': 5,
    'title': 'Navigation',
    'isLocked': false,
    'Page': const NavigationPage()
  },
  {
    'index': 6,
    'title': 'API Integration',
    'isLocked': false,
    'Page': const APIIntegrationPage()
  },
  {
    'index': 7,
    'title': 'Local Data storage',
    'isLocked': false,
    'Page': const LocalDataStoragePage()
  },
  {
    'index': 8,
    'title': 'Flutter Packages and Plugins',
    'isLocked': false,
    'Page': const FlutterpackagesPluginsPage()
  },
  {
    'index': 9,
    'title': 'Publishing to App Store',
    'isLocked': false,
    'Page': const PublishingToAppStorePage()
  },
];
