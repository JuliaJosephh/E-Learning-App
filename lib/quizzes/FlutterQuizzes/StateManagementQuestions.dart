const List<Map<String, dynamic>> stateManagementQuestions = [
  {
    'question': 'What does state management refer to in Flutter?',
    'options': [
      'A) Managing app colors and themes',
      'B) Managing and updating the UI when data changes',
      'C) Managing network requests',
      'D) Managing user input',
    ],
    'Answer': 'B) Managing and updating the UI when data changes',
  },
  {
    'question': 'Which widget is the simplest form of state management in Flutter?',
    'options': [
      'A) InheritedWidget',
      'B) Provider',
      'C) StatefulWidget',
      'D) Bloc',
    ],
    'Answer': 'C) StatefulWidget',
  },
  {
    'question': 'What method is used to update the state in a StatefulWidget?',
    'options': [
      'A) updateState()',
      'B) setState()',
      'C) rebuild()',
      'D) changeState()',
    ],
    'Answer': 'B) setState()',
  },
  {
    'question': 'What is the primary purpose of the InheritedWidget?',
    'options': [
      'A) To manage local state',
      'B) To share state across the widget tree',
      'C) To build the UI',
      'D) To manage network requests',
    ],
    'Answer': 'B) To share state across the widget tree',
  },
  {
    'question': 'Which state management solution is known for wrapping InheritedWidget to make state sharing easier?',
    'options': [
      'A) Riverpod',
      'B) Bloc',
      'C) Provider',
      'D) GetX',
    ],
    'Answer': 'C) Provider',
  },
  {
    'question': 'What is a key advantage of using Riverpod over Provider?',
    'options': [
      'A) It is more difficult to implement',
      'B) It provides compile-time safety and removes limitations of Provider',
      'C) It is less efficient',
      'D) It requires more boilerplate code',
    ],
    'Answer': 'B) It provides compile-time safety and removes limitations of Provider',
  },
  {
    'question': 'Which of the following statements is true about Bloc?',
    'options': [
      'A) It follows an event-driven architecture.',
      'B) It is best for managing local state.',
      'C) It does not allow state rebuilding.',
      'D) It is a simpler version of InheritedWidget.',
    ],
    'Answer': 'A) It follows an event-driven architecture.',
  },
  {
    'question': 'Which state management solution is known for its performance and simplicity, as well as for providing features like routing and dependency injection?',
    'options': [
      'A) GetX',
      'B) Bloc',
      'C) Riverpod',
      'D) Provider',
    ],
    'Answer': 'A) GetX',
  },
  {
    'question': 'In the context of state management, what is the function of ChangeNotifier in Provider?',
    'options': [
      'A) It provides compile-time checks.',
      'B) It allows widgets to listen to changes in the model.',
      'C) It manages network requests.',
      'D) It builds the UI.',
    ],
    'Answer': 'B) It allows widgets to listen to changes in the model.',
  },
  {
    'question': 'What does the setState method do in a StatefulWidget?',
    'options': [
      'A) It permanently sets the widget\'s state.',
      'B) It notifies Flutter that the state has changed and the UI needs to be rebuilt.',
      'C) It initializes the widget\'s state.',
      'D) It removes the widget from the tree.',
    ],
    'Answer': 'B) It notifies Flutter that the state has changed and the UI needs to be rebuilt.',
  },
];
