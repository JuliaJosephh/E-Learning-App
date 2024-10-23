const List<Map<String, dynamic>> pythonBasicsContent = [
  {
    "title": "1. Setting Up Python",
    "content": """
Installing Python:
To begin coding in Python, you'll need to install it on your system. You can download Python from the official website.

Running Python Code:
You can run Python code in several ways:
- Interactive Shell: Open a terminal or command prompt and type python or python3 to enter the interactive mode.
- Script Files: Write your code in a .py file and run it using python filename.py.
- Integrated Development Environments (IDEs): Use IDEs like PyCharm, VSCode, or Jupyter Notebook for a better coding experience.
    """,
    "code": null,
  },
  {
    "title": "2. Basic Syntax",
    "content": """
The simplest program in Python prints 'Hello, World!' to the console. Comments are used to explain code and are ignored during execution.
    """,
    "code": '''
print("Hello, World!") 
# This is a single-line comment
''',
  },
  {
    "title": "3. Data Types",
    "content": """
Python supports several built-in data types:

- Integers: Whole numbers (e.g., 5, -3, 100)
- Floats: Decimal numbers (e.g., 3.14, -0.001)
- Strings: Sequences of characters enclosed in single or double quotes.
- Booleans: Represent True or False.
- Lists: Ordered, mutable collections of items.
- Tuples: Ordered, immutable collections.
- Dictionaries: Store key-value pairs.
    """,
    "code": '''
# Numeric Types
age = 30
pi = 3.14

# Strings
name = "John Doe"

# Booleans
is_active = True

# Lists
fruits = ["apple", "banana", "cherry"]

# Tuples
coordinates = (10, 20)

# Dictionaries
person = {"name": "Alice", "age": 25}
''',
  },
  {
    "title": "4. Control Structures",
    "content": """
Control structures help control the flow of a program:

- Conditional Statements: Execute code based on conditions using `if`, `elif`, and `else`.
- Loops: Repeat a block of code using `for` loops and `while` loops.
    """,
    "code": '''
# Conditional Statements
age = 18
if age >= 18:
    print("You are an adult.")
elif age >= 13:
    print("You are a teenager.")
else:
    print("You are a child.")

# For Loop
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)

# While Loop
count = 0
while count < 5:
    print(count)
    count += 1
''',
  },
  {
    "title": "5. Functions",
    "content": """
Functions are reusable blocks of code that perform a specific task. You can define a function using the `def` keyword.
    """,
    "code": '''
def greet(name):
    return f"Hello, {name}!"

print(greet("Alice"))
''',
  },
  {
    "title": "6. Modules and Packages",
    "content": """
Modules are Python files that contain reusable code. You can import modules using the `import` statement. You can also create your own modules.
    """,
    "code": '''
# Importing a module
import math
print(math.sqrt(16))  
# Output: 4.0

# Creating and using a custom module
# mymodule.py
def add(a, b):
    return a + b

# main.py
from mymodule import add
print(add(5, 3))  
# Output: 8
''',
  },
  {
    "title": "7. Exception Handling",
    "content": """
Exception handling allows you to manage errors gracefully using `try`, `except`, `else`, and `finally`.
    """,
    "code": '''
try:
    result = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero!")
else:
    print("Division successful:", result)
finally:
    print("Execution complete.")
''',
  },
  {
    "title": "8. File Handling",
    "content": """
Python can read and write files using built-in functions. You can use the `open` function to handle file operations.
    """,
    "code": '''
# Writing to a file
with open('example.txt', 'w') as file:
    file.write("Hello, World!")

# Reading from a file
with open('example.txt', 'r') as file:
    content = file.read()
    print(content)
''',
  },
  {
    "title": "9. Object-Oriented Programming (OOP)",
    "content": """
Python supports OOP principles, such as encapsulation, inheritance, and polymorphism. You can define classes and create objects.
    """,
    "code": '''
# Class and Object
class Dog:
    def __init__(self, name):
        self.name = name

    def bark(self):
        return f"{self.name} says Woof!"

my_dog = Dog("Buddy")
print(my_dog.bark())  
# Output: Buddy says Woof!

# Inheritance
class Animal:
    def speak(self):
        return "Animal speaks"

class Cat(Animal):
    def meow(self):
        return "Meow!"

my_cat = Cat()
print(my_cat.speak())  # Output: Animal speaks
print(my_cat.meow())   # Output: Meow!
''',
  },
  {
    "title": "10. Conclusion",
    "content": """
This overview covers the basics of Python programming, including syntax, data types, control structures, functions, modules, and OOP. Python's simplicity and versatility make it an excellent choice for beginners and experienced developers alike.
    """,
    "code": null,
  }
];
