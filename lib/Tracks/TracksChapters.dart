//AI
import 'package:sessiontask/screens/AIPages/PythonPage.dart';
import 'package:sessiontask/screens/AIPages/PandasPage.dart';
import 'package:sessiontask/screens/AIPages/NumpyPage.dart';
import 'package:sessiontask/screens/AIPages/MachineLearningPage.dart';
//web
import 'package:sessiontask/screens/WebPages/HtmlCSSPage.dart';
import 'package:sessiontask/screens/WebPages/JavaScript.dart';
import 'package:sessiontask/screens/WebPages/FrontEndPage.dart';
import 'package:sessiontask/screens/WebPages/BackEndPage.dart';
//Flutter
import 'package:sessiontask/screens/MobilePages/BuildingAndroidAppsPage.dart';
import 'package:sessiontask/screens/MobilePages/DartProgrammingPage.dart';
import 'package:sessiontask/screens/MobilePages/FlutterBasicsPage.dart';

// Define the chapters for each course with specific pages
final List<Map<String, dynamic>> aiChapters = [
  {'index': 1,'title': 'Python Basics','isLocked': false,'Page': const PythonPage()},
  {'index': 2,'title': 'Python libraries: Pandas','isLocked': true,'Page': const PandasPage()},
  {'index': 3,'title': 'Python libraries: NumPy','isLocked': true,'Page': const NumPyPage()},
  {'index': 4,'title': 'Machine Learning','isLocked': true,'Page': const MachineLearningPage()},
];

final List<Map<String, dynamic>> webDevChapters = [
  {'index': 1,'title': 'HTML & CSS Basics','isLocked': false,'Page': const HtmlCSSPage()},
  {'index': 2,'title': 'JavaScript Basics','isLocked': true,'Page': const JavaScript()},
  {'index': 3, 'title': 'FrontEnd', 'isLocked': true, 'Page': const FrontEndPage()},
  {'index': 4, 'title': 'BackEnd', 'isLocked': true, 'Page': const BackEndPage()},
];

final List<Map<String, dynamic>> mobileDevChapters = [
  {'index': 1,'title': 'Flutter Basics','isLocked': false,'Page': const FlutterBasicsPage()},
  {'index': 2,'title': 'Dart Programming','isLocked': true,'Page': const DartProgrammingPage()},
  {'index': 3,'title': 'Building Android Apps','isLocked': true,'Page':const BuildingAndroidAppsPage()},
];
