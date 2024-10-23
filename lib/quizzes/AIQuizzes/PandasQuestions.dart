const List<Map<String, dynamic>> pandasQuestions = [
  {
    "question": "What is Pandas?",
    "options": [
      "A) A web development framework",
      "B) A high-performance, easy-to-use data structure and data analysis library",
      "C) A machine learning library",
      "D) A database management system"
    ],
    "Answer":
        "B) A high-performance, easy-to-use data structure and data analysis library"
  },
  {
    "question": "What are the two main data structures provided by Pandas?",
    "options": [
      "A) List and Array",
      "B) Series and DataFrame",
      "C) Dictionary and DataFrame",
      "D) Set and Tuple"
    ],
    "Answer": "B) Series and DataFrame",
  },
  {
    "question":
        "Which of the following is a correct way to create a DataFrame?",
    "options": [
      "A) `pd.create(data)`",
      "B) `pd.Series(data)`",
      "C) `pd.DataFrame(data)`",
      "D) `pd.Table(data)`"
    ],
    "Answer": "C) `pd.DataFrame(data)`",
  },
  {
    "question": "How can you access a specific column in a DataFrame?",
    "options": [
      "A) `df.column_name()`",
      "B) `df['column_name']`",
      "C) `df.loc['column_name']`",
      "D) `df.column['name']`"
    ],
    "Answer": "B) `df['column_name']`",
  },
  {
    "question": "Which method is used to access rows by index in Pandas?",
    "options": ["A) `df.loc`", "B) `df.index`", "C) `df.iloc`", "D) `df.row`"],
    "Answer": "C) `df.iloc`"
  },
  {
    "question": "How can you add a new column to a DataFrame?",
    "options": [
      "A) `df.add_column('col_name', data)`",
      "B) `df['col_name'] = data`",
      "C) `df.append_column('col_name', data)`",
      "D) `df.create_column('col_name', data)`"
    ],
    "Answer": "B) `df['col_name'] = data`",
  },
  {
    "question": "What method can be used to remove a column from a DataFrame?",
    "options": [
      "A) `df.delete('col_name')`",
      "B) `df.remove_column('col_name')`",
      "C) `df.drop('col_name', axis=1)`",
      "D) `df.remove('col_name')`"
    ],
    "Answer": "C) `df.drop('col_name', axis=1)`",
  },
  {
    "question":
        "Which method can be used to check for missing values in a DataFrame?",
    "options": [
      "A) `df.check_missing()`",
      "B) `df.isnull()`",
      "C) `df.missing()`",
      "D) `df.isna()`"
    ],
    "Answer": "B) `df.isnull()`",
  },
  {
    "question": "What does the `fillna` method do?",
    "options": [
      "A) Removes missing values",
      "B) Fills missing values with specified data",
      "C) Drops rows with missing values",
      "D) Identifies missing values"
    ],
    "Answer": "B) Fills missing values with specified data",
  },
  {
    "question":
        "Which of the following is the correct way to filter rows where Age > 25?",
    "options": [
      "A) `df.filter('Age > 25')`",
      "B) `df['Age'].filter(> 25)`",
      "C) `df[df['Age'] > 25]`",
      "D) `df.where('Age > 25')`"
    ],
    "Answer": "C) `df[df['Age'] > 25]`",
  },
  {
    "question": "What method allows you to group data in a DataFrame?",
    "options": [
      "A) `df.group()`",
      "B) `df.groupby()`",
      "C) `df.aggregate()`",
      "D) `df.collect()`"
    ],
    "Answer": "B) `df.groupby()`",
  },
  {
    "question": "How do you merge two DataFrames based on a common column?",
    "options": [
      "A) `pd.merge(df1, df2, on='column')`",
      "B) `pd.concat(df1, df2, on='column')`",
      "C) `pd.append(df1, df2)`",
      "D) `pd.union(df1, df2)`"
    ],
    "Answer": "A) `pd.merge(df1, df2, on='column')`",
  },
  {
    "question":
        "Which function is used to read a CSV file into a Pandas DataFrame?",
    "options": [
      "A) `pd.read_csv_file('filename')`",
      "B) `pd.open('filename')`",
      "C) `pd.read_csv('filename')`",
      "D) `pd.load_csv('filename')`"
    ],
    "Answer": "C) `pd.read_csv('filename')`",
  },
  {
    "question": "How can you write a DataFrame to a CSV file?",
    "options": [
      "A) `df.to_csv_file('filename')`",
      "B) `df.save_csv('filename')`",
      "C) `df.write_csv('filename')`",
      "D) `df.to_csv('filename')`"
    ],
    "Answer": "D) `df.to_csv('filename')`"
  },
  {
    "question": "What is Pandas primarily used for?",
    "options": [
      "A) Web development",
      "B) Data cleaning, transformation, and analysis",
      "C) Machine learning",
      "D) Game development"
    ],
    "Answer": "B) Data cleaning, transformation, and analysis",
  },
  {
    "question": "Which command is used to install Pandas?",
    "options": [
      "A) npm install pandas",
      "B) apt-get install pandas",
      "C) pip install pandas",
      "D) brew install pandas"
    ],
    "Answer": "C) pip install pandas",
  },
  {
    "question": "What are the two main data structures provided by Pandas?",
    "options": [
      "A) Series and DataFrame",
      "B) Lists and Dictionaries",
      "C) Arrays and Matrices",
      "D) Sets and Tuples"
    ],
    "Answer": "A) Series and DataFrame",
  },
  {
    "question": "How can you create a DataFrame from a dictionary in Pandas?",
    "options": [
      "A) pd.create_dataframe(dict)",
      "B) pd.DataFrame(dict)",
      "C) DataFrame.create(dict)",
      "D) dict.DataFrame()"
    ],
    "Answer": "B) pd.DataFrame(dict)",
  },
  {
    "question": "How do you access a column in a Pandas DataFrame?",
    "options": [
      "A) df.get_column('ColumnName')",
      "B) df['ColumnName']",
      "C) df.column('ColumnName')",
      "D) df.access_column('ColumnName')"
    ],
    "Answer": "B) df['ColumnName']",
  },
  {
    "question": "20. Which method is used to access rows by index in Pandas?",
    "options": ["A) df.loc", "B) df.find", "C) df.iloc", "D) df.row"],
    "Answer": "C) df.iloc"
  },
  {
    "question":
        "What is the correct way to add a new column to a Pandas DataFrame?",
    "options": [
      "A) df.add_column('NewColumn', value)",
      "B) df['NewColumn'] = value",
      "C) df.insert('NewColumn', value)",
      "D) df.append_column('NewColumn', value)"
    ],
    "Answer": "B) df['NewColumn'] = value",
  },
  {
    "question": "Which method is used to remove a column from a DataFrame?",
    "options": [
      "A) df.remove_column('ColumnName')",
      "B) df.delete_column('ColumnName')",
      "C) df.drop('ColumnName', axis=1)",
      "D) df.remove('ColumnName')"
    ],
    "Answer": "C) df.drop('ColumnName', axis=1)",
  },
  {
    "question": "How can you check for missing values in a DataFrame?",
    "options": [
      "A) df.check_null()",
      "B) df.isna()",
      "C) df.missing()",
      "D) df.isnull()"
    ],
    "Answer": "D) df.isnull()"
  },
  {
    "question": "Which method is used to fill missing values in a DataFrame?",
    "options": [
      "A) df.fill()",
      "B) df.fillna()",
      "C) df.null_fill()",
      "D) df.fill_missing()"
    ],
    "Answer": "B) df.fillna()",
  },
  {
    "question":
        "How can you filter rows in a DataFrame where the 'Age' column is greater than 25?",
    "options": [
      "A) df.filter('Age > 25')",
      "B) df.select('Age > 25')",
      "C) df[df['Age'] > 25]",
      "D) df.filter_rows('Age > 25')"
    ],
    "Answer": "C) df[df['Age'] > 25]",
  },
  {
    "question":
        "Which method is used to group data by a specific column in Pandas?",
    "options": [
      "A) df.group_by()",
      "B) df.group()",
      "C) df.groupby()",
      "D) df.groupby_column()"
    ],
    "Answer": "C) df.groupby()",
  },
  {
    "question": "How can you merge two DataFrames in Pandas?",
    "options": [
      "A) pd.concat(df1, df2)",
      "B) pd.merge(df1, df2, on='ColumnName')",
      "C) df1.join(df2)",
      "D) pd.combine(df1, df2)"
    ],
    "Answer": "B) pd.merge(df1, df2, on='ColumnName')",
  },
  {
    "question":
        "Which method is used to read a CSV file into a Pandas DataFrame?",
    "options": [
      "A) pd.read_csv()",
      "B) pd.read_file()",
      "C) pd.read_data()",
      "D) pd.load_csv()"
    ],
    "Answer": "A) pd.read_csv()",
  },
  {
    "question": "Which method is used to write a DataFrame to a CSV file?",
    "options": [
      "A) df.write_csv()",
      "B) df.save_csv()",
      "C) df.to_csv()",
      "D) df.save_to_csv()"
    ],
    "Answer": "C) df.to_csv()",
  }
];
