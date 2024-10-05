const List<Map<String, dynamic>> phpContent = [
  {
    'title': 'PHP Introduction',
    'content': '''
• Stands for "Hypertext Preprocessor"
• It's a scripting language primarily used for the backend of web development.
• PHP runs on the server, generating dynamic content for web pages before sending them to the browser.
• You can easily mix PHP code with HTML, allowing web pages to be interactive and dynamic.
• Before you continue you should have a basic understanding of the following:
  o HTML
  o CSS
  o JavaScript
''',
    'code': null,
  },
  {
    'title': 'PHP Syntax',
    'content': '''
• A PHP script can be placed anywhere in the document.
• A PHP script starts with <?php and ends with ?>:
• Below, we have an example of a simple PHP file, with a PHP script that uses a built-in PHP function "echo" to output the text "Hello World!" on a web page:
''',
    'code': '''
<!DOCTYPE html>
<html>
<body>
<?php echo "Hello World!"; ?>
</body>
</html>
''',
  },
  {
    'title': 'PHP Comments',
    'content': '''
• A comment in PHP code is a line that is not executed as a part of the program.
• Its only purpose is to be read by someone who is looking at the code.
• PHP supports several ways of commenting:
''',
    'code': '''
// This is a single-line comment
# This is also a single-line comment
/* This is a
multi-line comment */
''',
  },
  {
    'title': 'PHP Variables',
    'content': '''
• Variables are "containers" for storing information.
• In PHP, a variable starts with the \$ sign, followed by the name of the variable:
• A variable name must start with a letter or the underscore character.
• A variable name cannot start with a number.
• Variable names are case-sensitive.
• PHP has no command for declaring a variable, and the data type depends on the value of the variable.
''',
    'code': null,
  },
  {
    'title': 'PHP Echo and Print',
    'content': '''
• With PHP, there are two basic ways to get output: echo and print.
• echo and print are more or less the same. They are both used to output data to the screen.
• The differences are small:
  o echo has no return value while print has a return value of 1 so it can be used in expressions.
  o echo can take multiple parameters while print can take one argument.
  o echo is marginally faster than print.''',
    'code': '''
// PHP echo Statement:
<?php
\$x = 5;
\$y = "John";
?>
echo "Hello";
// same as:
echo("Hello");
echo "<p>Study PHP at \$txt2</p>"; // display variable

//PHP print Statement:
print "Hello";
// same as:
print("Hello");
print "<h2>\$txt1</h2>"; // print variables
''',
  },
  {
    'title': 'PHP Data Types',
    'content': '''
• You can get the data type of any object by using the var_dump() function.
''',
    'code': null,
  },
  {
    'title': 'PHP Casting',
    'content': '''
• Sometimes you need to change a variable from one data type into another, and sometimes you want a variable to have a specific data type. This can be done with casting.
''',
    'code': '''

\$x = 5985;
var_dump(\$x);
\$y = 'Hello world!';
var_dump(\$y);
\$z = true;
var_dump(\$z);
\$cars = array("Volvo","BMW","Toyota");
var_dump(\$cars);
\$a = 5; // Integer
\$b = 5.34; // Float
\$c = "hello"; // String
\$d = true; // Boolean
\$e = NULL; // NULL
\$f = 50;
\$a = (string) \$a;
\$b = (int) \$b;
\$c = (float) \$c;
\$d = (bool) \$d;
\$e = (array) \$e;
\$f = (unset)\$f; // cast to NULL
''',
  },
  {
    'title': 'PHP Math',
    'content': '''
• PHP has a set of math functions that allows you to perform mathematical tasks on numbers.
• The pi() function returns the value of PI:
• The min() and max() functions can be used to find the lowest or highest value in a list of arguments:
• The abs() function returns the absolute (positive) value of a number:
• The sqrt() function returns the square root of a number:
''',
    'code': '''
<?php
echo(pi());
?>
echo(min(0, 150, 30, 20, -8, -200));
echo(max(0, 150, 30, 20, -8, -200));
<?php
echo(abs(-6.7));
?>
echo(sqrt(64));
''',
  },
  {
    'title': 'PHP Operators',
    'content': '''
1. Arithmetic Operators
• PHP arithmetic operators are used with numeric values to perform common arithmetical operations.
2. Assignment Operators
• PHP assignment operators are used with numeric values to write a value to a variable.
3. Comparison Operators
• PHP comparison operators are used to compare two values (number or string):
''',
    'code': null,
  },
  {
    'title': 'PHP IF Statements',
    'content': '''
• Conditional statements are used to perform different actions based on different conditions.
• The if statement executes some code if one condition is true.
• The if...else statement executes some code if a condition is true and another code if that condition is false.
• The if...elseif...else statement executes different codes for more than two conditions.
''',
    'code': '''
\$t = 14;
if (\$t < 20) {
echo "Have a good day!";
}

\$t = date("H");
if (\$t < "20") {
echo "Have a good day!";
} else {
echo "Have a good night!";
}

\$t = date("H");
if (\$t < "10") {
echo "Have a good morning!";
} elseif (\$t < "20") {
echo "Have a good day!";
} else {
echo "Have a good night!";
}
''',
  },
];
