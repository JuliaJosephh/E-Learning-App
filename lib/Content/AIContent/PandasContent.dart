const List<Map<String, dynamic>> pandasContent = [
  {
    "title": "1. Introduction to Pandas",
    "content": """
Pandas is an open-source library that provides high-performance, easy-to-use data structures and data analysis tools. It is built on top of NumPy and is widely used for data cleaning, transformation, and analysis.

You can install Pandas using:
pip install pandas
    """,
    "code": null,
  },
  {
    "title": "2. Pandas Data Structures",
    "content": """
Pandas provides two main data structures:

- Series: A one-dimensional labeled array capable of holding any data type.
- DataFrame: A two-dimensional, size-mutable, and potentially heterogeneous tabular data structure with labeled axes (rows and columns).
    """,
    "code": null,
  },
  {
    "title": "3. Creating a DataFrame",
    "content": "You can create a DataFrame from dictionaries, lists, or NumPy arrays.",
    "code": '''
import pandas as pd

# Creating a DataFrame from a dictionary
data = {'Name': ['Alice', 'Bob', 'Charlie'],
        'Age': [25, 30, 35],
        'City': ['New York', 'San Francisco', 'Los Angeles']}

df = pd.DataFrame(data)
print(df)
''',
  },
  {
    "title": "4. Accessing Columns and Rows",
    "content": "You can access DataFrame columns using bracket notation and rows using `iloc` or `loc`.",
    "code": '''
# Accessing a column
print(df['Name'])

# Accessing rows by index and label
print(df.iloc[0])
print(df.loc[0])
''',
  },
  {
    "title": "5. Adding and Removing Columns",
    "content": """
Adding and removing columns in a DataFrame is simple.
    """,
    "code": '''
# Adding a new column
df['Country'] = ['USA', 'USA', 'USA']

# Removing a column
df.drop('Country', axis=1, inplace=True)
''',
  },
  {
    "title": "6. Handling Missing Data",
    "content": "Pandas provides methods to handle missing data using `fillna`, `dropna`, and more.",
    "code": '''
# Checking for missing values
df.isnull()

# Filling missing values
df.fillna(0, inplace=True)

# Dropping rows with missing values
df.dropna(inplace=True)
''',
  },
  {
    "title": "7. Data Selection and Filtering",
    "content": "You can filter data in Pandas using conditions.",
    "code": '''
# Filtering rows where Age > 25
filtered_df = df[df['Age'] > 25]
print(filtered_df)
''',
  },
  {
    "title": "8. Grouping and Aggregation",
    "content": "You can group data using the `groupby` method and perform aggregation.",
    "code": '''
# Grouping by a column and calculating the mean age
grouped_df = df.groupby('City')['Age'].mean()
print(grouped_df)
''',
  },
  {
    "title": "9. Merging and Concatenating DataFrames",
    "content": "Pandas allows you to merge and concatenate DataFrames.",
    "code": '''
# Merging two DataFrames
df1 = pd.DataFrame({'Name': ['Alice', 'Bob'], 'Age': [25, 30]})
df2 = pd.DataFrame({'Name': ['Alice', 'Bob'], 'City': ['NY', 'SF']})
merged_df = pd.merge(df1, df2, on='Name')
print(merged_df)
''',
  },
  {
    "title": "10. Reading and Writing Files",
    "content": "Pandas can read and write data from files like CSV, Excel, and SQL databases.",
    "code": '''
# Reading a CSV file
df = pd.read_csv('data.csv')

# Writing a DataFrame to a CSV file
df.to_csv('output.csv', index=False)
''',
  },
  {
    "title": "11. Conclusion",
    "content": """
Pandas is an excellent tool for handling structured data efficiently. Its capabilities range from basic data manipulation to complex operations like grouping, merging, and file handling.
    """,
    "code": null,
  },
];