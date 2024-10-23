const List<Map<String, dynamic>> CSSContent = [
  {
    "title": "1. What is CSS?",
    "content": """
CSS stands for Cascading Style Sheets. It is used to style HTML elements and controls the layout, design, and presentation of web pages.
    """,
    "code": null,
  },
  {
    "title": "2. How to Add CSS to an HTML Document",
    "content": """
CSS can be added to an HTML document in three ways:
1. **Inline style**: Directly within the HTML element using the `style` attribute.
2. **Internal style sheet**: Within the `<head>` section of the HTML document using the `<style>` tag.
3. **External style sheet**: In a separate `.css` file linked to the HTML document using the `<link>` tag.
    """,
    "code": '''
<html>
<head>
<title>My Website</title>
<style>
body { background-color: lightblue; font-family: Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to my website!</h1>
<p>This is a paragraph of text.</p>
</body>
</html>
''',
  },
  {
    "title": "3. Selectors",
    "content": """
Selectors are used to target specific HTML elements. Common selectors include:
- **Element selectors** (e.g., `h1`, `p`)
- **Class selectors** (e.g., `.my-class`)
- **ID selectors** (e.g., `#my-id`)
- **Descendant selectors** (e.g., `div p`)
- **Child selectors** (e.g., `div > p`)
- **Sibling selectors** (e.g., `p + p`)
- **Universal selector** (e.g., `*`)
    """,
    "code": '''
h1 {
  color: red;
  text-align: center;
}

.important {
  font-weight: bold;
  font-size: 18px;
}

#myButton {
  background-color: green;
  color: white;
  padding: 10px 20px;
}
''',
  },
  {
    "title": "4. Properties",
    "content": """
Properties are attributes that define the style of an element. Examples include:
- `color`, `font-size`, `background-color`, `margin`, `padding`, `border`, `display`, `position`.
    """,
    "code": '''
body {
  background-color: lightblue;
  font-family: Arial, sans-serif;
  font-size: 16px;
}

h1 {
  color: #333;
  margin-bottom: 20px;
}
''',
  },
  {
    "title": "5. Block-level and Inline Elements",
    "content": """
- **Block-level elements** occupy the entire width of their container (e.g., `div`, `p`, `h1-h6`, `ul`, `ol`, `li`).
- **Inline elements** only take up the space they need (e.g., `span`, `a`, `img`, `strong`, `em`).
    """,
    "code": null,
  },
  {
    "title": "6. Display Property",
    "content": """
The display property controls how elements are displayed. Values include:
- `block`, `inline`, `inline-block`, `flex`, `grid`.
    """,
    "code": '''
.container {
  display: flex;
  justify-content: space-between;
}

.item {
  width: 200px;
  height: 100px;
  border: 1px solid black;
}
''',
  },
  {
    "title": "7. Color Formats",
    "content": """
CSS supports multiple color formats:
- **Hexadecimal** (e.g., `#FF0000`)
- **RGB** (e.g., `rgb(255, 0, 0)`)
- **HSL** (e.g., `hsl(0, 100%, 50%)`)
    """,
    "code": '''
div {
  background-color: #FF0000; /* Red */
  color: rgb(0, 0, 255); /* Blue */
  color: hsl(240, 100%, 50%); /* Turquoise */
}
''',
  },
  {
    "title": "8. Fonts",
    "content": """
CSS allows you to style fonts using:
- Font families
- Font styles (normal, italic, oblique)
- Font weights (normal, bold, bolder, lighter)
- Font sizes
- Line height
- Letter spacing
- Word spacing
    """,
    "code": '''
p {
  font-family: Arial, sans-serif;
  font-size: 16px;
  font-weight: bold;
  line-height: 1.5;
  letter-spacing: 2px;
  word-spacing: 5px;
}
''',
  },
  {
    "title": "9. Backgrounds",
    "content": """
CSS background properties include:
- Background color
- Background image
- Background repeat
- Background attachment
- Background position
- Background size
    """,
    "code": '''
body {
  background-image: url("image.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center center;
  background-size: cover;
}
''',
  },
  {
    "title": "10. Positioning",
    "content": """
The position property allows you to control the positioning of elements. Values include:
- `static`, `relative`, `absolute`, `fixed`, `sticky`
- `top`, `right`, `bottom`, `left` properties
- `z-index` property
    """,
    "code": '''
.floating-element {
  position: absolute;
  top: 100px;
  left: 200px;
  z-index: 10;
}
''',
  },
  {
    "title": "11. Borders",
    "content": """
The border property allows you to style borders around elements:
- `border`, `border-width`, `border-style`, `border-color`
- Rounded corners using `border-radius`
    """,
    "code": '''
div {
  border: 2px solid black;
  border-radius: 10px;
}
''',
  },
  {
    "title": "12. Box Model",
    "content": """
The box model consists of:
- Content area
- Padding
- Border
- Margin
    """,
    "code": '''
.box {
  width: 200px;
  height: 100px;
  border: 2px solid black;
  padding: 10px;
  margin: 20px;
}
''',
  },
  {
    "title": "13. Flexbox",
    "content": """
Flexbox is used for creating flexible layouts. Use:
- `display: flex`
- `flex-direction`, `flex-wrap`, `justify-content`, `align-items`, `align-content`
    """,
    "code": '''
.container {
  display: flex;
  justify-content: space-between;
}

.item {
  width: 200px;
  height: 100px;
  border: 1px solid black;
}
''',
  },
  {
    "title": "14. CSS Transitions",
    "content": """
Transitions are used to animate property changes. The `transition` property can be applied:
    """,
    "code": '''
.button:hover {
  background-color: #007bff;
  transition: background-color 0.3s ease-in-out;
}
''',
  },
  {
    "title": "15. CSS Animations",
    "content": """
CSS animations allow you to create more complex animations using:
- `@keyframes` rule
- `animation` property
    """,
    "code": '''
@keyframes fade-in {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

.element {
  animation: fade-in 1s ease-in-out;
}
''',
  },
];
