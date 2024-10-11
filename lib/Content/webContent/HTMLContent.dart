const List<Map<String, dynamic>> htmlContent = [
  {
    "title": "1. Introduction to HTML",
    "content": """
What is HTML?
  HTML (HyperText Markup Language) is the standard markup language for creating web pages.
  It structures web content and allows the browser to render it visually.""",
    "code": null,
  },
  {
    "title": '''
2. Basic Structure of an HTML
  2.1. DOCTYPE Declaration
  ''',
    "content": """
  The first line of an HTML document that tells the browser what version of HTML it’s using.
  Example: <!DOCTYPE html>
  """,
    "code": null,
  },
  {
    "title": '''
  2.2. HTML Tag''',
    "content": """
  The root element that wraps all the content.
Syntax: <html></html>
  """,
    "code": null,
  },
  {
    "title": '''
  2.3. Head Section
  ''',
    "content": """
  Contains metadata, title, and links to CSS or JavaScript files.
  """,
    "code": '''
<head>
    <title>Page Title</title>
    <link rel="stylesheet" href="styles.css">
</head>
''',
  },
  {
    "title": '''
  2.4. Body Section
  ''',
    "content": """
  Contains the visible content of the web page.
  Syntax: <body></body>
  """,
    "code": null,
  },
  {
    "title": '''
3. Text Content Elements
  3.1 Headings
  ''',
    "content": """
Headings (<h1> to <h6>): Define headings of different levels.
  """,
    "code": '''
<h1>This is a Heading 1</h1>
<h2>This is a Heading 2</h2>
''',
  },
  {
    "title": '''
  3.2 Paragraph
  ''',
    "content": """
Paragraph (<p>): Defines a paragraph of text.
  """,
    "code": '''
<p>This is a paragraph of text.</p>
''',
  },
  {
    "title": '''
  3.3 Line Break
  ''',
    "content": """
Line Break (<br>): Inserts a line break within text.
  """,
    "code": '''
<p>Line one.<br>Line two.</p>
''',
  },
  {
    "title": '''
  3.4 Horizontal Rule
  ''',
    "content": """
Horizontal Rule (<hr>): Creates a thematic break, usually displayed as a horizontal line.
  """,
    "code": '''
<hr>
''',
  },
  {
    "title": '''
4. List Elements
  4.1 Unordered List
  ''',
    "content": """
Unordered List (<ul>): Displays a bulleted list.
  """,
    "code": '''
<ul>
    <li>Item 1</li>
    <li>Item 2</li>
</ul>
''',
  },
  {
    "title": '''
  4.2 Ordered List''',
    "content": """
<ul>
    <li>Item 1</li>
    <li>Item 2</li>
</ul>

  """,
    "code": '''
<ol>
    <li>First item</li>
    <li>Second item</li>
</ol>
''',
  },
  {
    "title": '''
  4.3 Definiton List''',
    "content": """
Definition List (<dl>): Contains terms and their descriptions.
  """,
    "code": '''
<dl>
    <dt>Term 1</dt>
    <dd>Description of Term 1.</dd>
</dl>
''',
  },
  {
    "title": '''
5. Link and Image Elements
  5.1 Anchor
  ''',
    "content": """
Anchor (<a>): Creates hyperlinks to other web pages or sections within the same page.
  """,
    "code": '''
<a href="https://www.example.com" target="_blank">Visit Example</a>
''',
  },
  {
    "title": '''
  5.2 Image
  ''',
    "content": """
Image (<img>): Embeds images in the webpage.
  """,
    "code": '''
<img src="image.jpg" alt="Description of image" width="300" height="200">
''',
  },
  {
    "title": '''
6. Media Elments
  6.1 Audio
  ''',
    "content": """
Audio (<audio>): Embeds audio content.
  """,
    "code": '''
<audio controls>
    <source src="audio.mp3" type="audio/mpeg">
    Your browser does not support the audio tag.
</audio>
''',
  },
  {
    "title": '''
  6.2 Video''',
    "content": """
Video (<video>): Embeds video content.
  """,
    "code": '''
<video width="320" height="240" controls>
    <source src="movie.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>
''',
  },
  {
    "title": '''
7. Form Elements
  7.1 Form''',
    "content": """
Form (<form>): Container for form controls.
  """,
    "code": '''
<form action="/submit" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name">
    <input type="submit" value="Submit">
</form>
''',
  },
  {
    "title": '''
  7.2 Input Types
  ''',
    "content": """
Input Types: Various types of input fields can be created:

Text: <input type="text">
Password: <input type="password">
Email: <input type="email">
Checkbox: <input type="checkbox">
Radio: <input type="radio">
File: <input type="file">
Button: <button>Submit</button>
  """,
    "code": null,
  },
  {
    "title": "8. Table Elements",
    "content": """
Table Row (<tr>): Defines a row in the table.

Table Header (<th>): Defines a header cell.

Table Data (<td>): Defines a standard cell.
  """,
    "code": '''
<table>
    <tr>
        <th>Header 1</th>
        <th>Header 2</th>
    </tr>
    <tr>
        <td>Data 1</td>
        <td>Data 2</td>
    </tr>
</table>
''',
  },
  {
    "title": "9. Semantic Elements",
    "content": """
<header>: Defines the header for a document or section.
<footer>: Defines the footer for a document or section.
<nav>: Represents navigation links.
<article>: Represents independent content.
<section>: Represents a thematic grouping of content.
<aside>: Represents content related to the main content, like sidebars.
  """,
    "code": null,
  },
  {
    "title": "10. Scripting Elements",
    "content": """
Script (<script>): Defines a client-side script.
  """,
    "code": '''
<script src="script.js"></script>
''',
  },
  {
    "title": "11. Commenting in HTML",
    "content": """
You can add comments in your HTML code that are not displayed on the webpage.
  """,
    "code": '''
<!-- This is a comment -->
''',
  },
];
