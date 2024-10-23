const List<Map<String, dynamic>> PythonQuestions = [
  {
    "question": "How can you install Python on your system?",
    "options": [
      "A) Through a web browser extension",
      "B) By downloading it from the official Python website",
      "C) By running `pip install python` in the terminal",
      "D) Using the Python mobile app"
    ],
    "Answer": "B) By downloading it from the official Python website"
  },
  {
    "question": "Which of the following is NOT a way to run Python code?",
    "options": [
      "A) Interactive shell",
      "B) Python script file (`.py`)",
      "C) Compiling Python to machine code",
      "D) Using an IDE like PyCharm or VSCode"
    ],
    "Answer": "C) Compiling Python to machine code"
  },
  {
    "question": "What is the correct way to print 'Hello, World!' in Python?",
    "options": [
      "A) print \"Hello, World!\"",
      "B) echo \"Hello, World!\"",
      "C) print(\"Hello, World!\")",
      "D) System.out.println(\"Hello, World!\");"
    ],
    "Answer": "C) print(\"Hello, World!\")"
  },
  {
    "question": "How are single-line comments written in Python?",
    "options": [
      "A) Using /* */",
      "B) Using <!-- -->",
      "C) Using #",
      "D) Using //"
    ],
    "Answer": "C) Using #"
  },
  {
    "question": "Which of the following is a mutable data type in Python?",
    "options": ["A) Tuple", "B) List", "C) String", "D) Integer"],
    "Answer": "B) List"
  },
  {
    "question":
        "What is the correct data type for storing a collection of key-value pairs?",
    "options": ["A) List", "B) Tuple", "C) Dictionary", "D) Set"],
    "Answer": "C) Dictionary"
  },
  {
    "question": "Which of the following represents a float in Python?",
    "options": ["A) 42", "B) \"42\"", "C) 42.0", "D) True"],
    "Answer": "C) 42.0"
  },
  {
    "question": "How are strings defined in Python?",
    "options": [
      "A) With parentheses",
      "B) With single or double quotes",
      "C) With angle brackets",
      "D) With curly braces"
    ],
    "Answer": "B) With single or double quotes"
  },
  {
    "question":
        "Which of the following is the correct syntax for an `if` statement in Python?",
    "options": [
      "A) if (x > 10) then:",
      "B) if x > 10:",
      "C) if x > 10 then:",
      "D) if x > 10 {"
    ],
    "Answer": "B) if x > 10:"
  },
  {
    "question": "What will the following code output?\n"
        "age = 18\n"
        "if age >= 18:\n"
        "    print(\"You are an adult.\")\n"
        "elif age >= 13:\n"
        "    print(\"You are a teenager.\")\n"
        "else:\n"
        "    print(\"You are a child.\")",
    "options": [
      "A) You are a teenager.",
      "B) You are a child.",
      "C) You are an adult.",
      "D) No output."
    ],
    "Answer": "C) You are an adult."
  },
  {
    "question": "How many times will the following code print `count`?\n"
        "count = 0\n"
        "while count < 5:\n"
        "    print(count)\n"
        "    count += 1",
    "options": ["A) 4", "B) 5", "C) 6", "D) 0"],
    "Answer": "B) 5"
  },
  {
    "question": "How do you define a function in Python?",
    "options": [
      "A) function greet(name):",
      "B) def greet(name):",
      "C) void greet(name):",
      "D) fn greet(name):"
    ],
    "Answer": "B) def greet(name):"
  },
  {
    "question": "What will the following code output?\n"
        "def greet(name):\n"
        "    return f\"Hello, {name}!\"\n"
        "print(greet(\"Alice\"))",
    "options": [
      "A) Hello, Alice!",
      "B) greet Alice",
      "C) Alice, Hello!",
      "D) Hello, World!"
    ],
    "Answer": "A) Hello, Alice!"
  },
  {
    "question": "How do you import the `math` module in Python?",
    "options": [
      "A) include math",
      "B) import math",
      "C) from math import *",
      "D) use math"
    ],
    "Answer": "B) import math"
  },
  {
    "question": "What will the following code output?\n"
        "import math\n"
        "print(math.sqrt(16))",
    "options": ["A) 8", "B) 16", "C) 4", "D) None"],
    "Answer": "C) 4"
  },
  {
    "question":
        "Which of the following keywords is used for error handling in Python?",
    "options": [
      "A) try-except",
      "B) catch-finally",
      "C) try-catch",
      "D) throw-catch"
    ],
    "Answer": "A) try-except"
  },
  {
    "question": "What will the following code output?\n"
        "try:\n"
        "    result = 10 / 0\n"
        "except ZeroDivisionError:\n"
        "    print(\"Cannot divide by zero!\")",
    "options": ["A) 10", "B) 0", "C) Cannot divide by zero!", "D) No output"],
    "Answer": "C) Cannot divide by zero!"
  },
  {
    "question":
        "Which of the following modes is used to open a file for writing in Python?",
    "options": ["A) 'r'", "B) 'w'", "C) 'a'", "D) 'r+'"],
    "Answer": "B) 'w'"
  },
  {
    "question": "What will the following code do?\n"
        "with open('example.txt', 'w') as file:\n"
        "    file.write(\"Hello, World!\")",
    "options": [
      "A) Create and write \"Hello, World!\" to `example.txt`",
      "B) Print \"Hello, World!\" to the console",
      "C) Append \"Hello, World!\" to `example.txt`",
      "D) Read content from `example.txt`"
    ],
    "Answer": "A) Create and write \"Hello, World!\" to `example.txt`"
  },
  {
    "question": "Which of the following defines a class in Python?",
    "options": [
      "A) class Dog():",
      "B) Dog class:",
      "C) def Dog():",
      "D) object Dog():"
    ],
    "Answer": "A) class Dog():"
  },
  {
    "question": "What will the following code output?\n"
        "class Dog:\n"
        "    def __init__(self, name):\n"
        "        self.name = name\n"
        "    def bark(self):\n"
        "        return f\"{self.name} says Woof!\"\n"
        "my_dog = Dog(\"Buddy\")\n"
        "print(my_dog.bark())",
    "options": [
      "A) Buddy says Woof!",
      "B) Woof! says Buddy",
      "C) Dog says Woof!",
      "D) Buddy Woof"
    ],
    "Answer": "A) Buddy says Woof!"
  }
];
