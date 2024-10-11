const List<Map<String, dynamic>> JSContent = [
  {
    "title": "1. JavaScript Introduction",
    "content": """
JavaScript is a programming language used to make websites interactive and dynamic. It works with HTML (structure) and CSS (style) to create complete web pages. 

- It allows web pages to respond to user actions, like clicks, form submissions, and mouse movements.
- JavaScript runs directly in the browser (client-side).
- JavaScript and Java are completely different languages, both in concept and design.
- In HTML, JavaScript code is inserted between <script> and </script> tags.
- Scripts can be placed in the <body>, or in the <head> section of an HTML page, or in both.
- Scripts can also be placed in external files.
    """,
    "code": null,
  },
  {
    "title": "2. JavaScript Output",
    "content": """
JavaScript can output content using several methods:
1. Using innerHTML: You can modify the HTML content of an element using `document.getElementById(id).innerHTML`.
2. Using document.write(): Convenient for testing purposes, but not recommended for production use.
3. Using window.alert(): You can use an alert box to display data.
4. JavaScript Print: Use `window.print()` to print the content of the current window.
    """,
    "code": '''
<script>
document.getElementById("demo").innerHTML = "My First JavaScript";
document.write(5 + 6);
window.alert(5 + 6);
</script>
''',
  },
  {
    "title": "3. JavaScript Statements",
    "content": """
JavaScript statements include: values, operators, expressions, keywords, and comments. For example:
- Add a semicolon at the end of each executable statement.
- Example: `document.getElementById("demo").innerHTML = "Hello Dolly.";`
    """,
    "code": '''
<script>
document.getElementById("demo").innerHTML = "Hello Dolly.";
window.alert(5 + 6);
</script>
''',
  },
  {
    "title": "4. JavaScript Syntax",
    "content": """
JavaScript syntax defines how JavaScript programs are constructed. This includes using variables, operators, and statements.
    """,
    "code": null,
  },
  {
    "title": "5. JavaScript Comments",
    "content": """
JavaScript supports two types of comments:
- Single-line comment: `// This is a single-line comment`
- Multi-line comment: `/* This is a multi-line comment */`
    """,
    "code": '''
// This is a single-line comment
/* This is a multi-line comment */
''',
  },
  {
    "title": "6. JavaScript Variables",
    "content": """
Variables are containers for storing values. JavaScript variables can be declared in four ways:
1. Automatically
2. Using `var`
3. Using `let`
4. Using `const`

Always use `const` if the value or type should not change. Use `let` if the value may change. Example:
    """,
    "code": '''
var x = 5;
let y = 6;
const z = 7;
document.getElementById("myH").innerHTML = "My First Page";
''',
  },
  {
    "title": "7. JavaScript Assignment Operators",
    "content": """
JavaScript supports several assignment operators:
- `=`: Assigns a value.
- `+=`: Adds to the existing value.
- `-=`: Subtracts from the existing value.
- `*=`: Multiplies the existing value.
- `/=`: Divides the existing value.
- `%=`: Assigns the remainder of the division.
    """,
    "code": '''
let x = 10;
x += 5;  // x = x + 5
x -= 3;  // x = x - 3
x *= 2;  // x = x * 2
x /= 4;  // x = x / 4
x %= 2;  // x = x % 2
''',
  },
  {
    "title": "8. JavaScript Data Types",
    "content": """
JavaScript has multiple data types, including:
1. Strings: `let car = "Toyota";`
2. Numbers: `let x = 10;`
3. BigInt: `let y = BigInt("12345678901234567890");`
4. Booleans: `let isTrue = true;`
5. Undefined: `let z;`
    """,
    "code": '''
let car = "Toyota";
let x = 10;
let bigNum = BigInt("12345678901234567890");
let isTrue = true;
let z;
''',
  },
  {
    "title": "9. JavaScript Functions",
    "content": """
A JavaScript function is a block of code designed to perform a particular task. Functions are executed when called (invoked).
    """,
    "code": '''
function myFunction(a, b) {
  return a * b;
}

let result = myFunction(4, 3);
console.log(result);  // Output: 12
''',
  },
  {
    "title": "10. JavaScript IF Statements",
    "content": """
Conditional statements allow you to execute different blocks of code depending on conditions. The main types are:
- `if` statement: Executes code if a condition is true.
- `else` statement: Executes code if the condition is false.
- `else if` statement: Adds a new condition if the first condition is false.
    """,
    "code": '''
if (hour < 18) {
  greeting = "Good day";
} else {
  greeting = "Good evening";
}

if (time < 10) {
  greeting = "Good morning";
} else if (time < 20) {
  greeting = "Good day";
} else {
  greeting = "Good evening";
}
''',
  },
];
