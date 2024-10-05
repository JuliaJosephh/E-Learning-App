const List<Map<String, dynamic>> NumPyContent = [
  {
    "title": "1. Introduction to NumPy",
    "content": """
NumPy is a fundamental library for scientific computing in Python. It provides support for arrays, matrices, and a wide variety of mathematical functions to operate on these data structures.

You can install NumPy using:
pip install numpy
    """,
    "code": null,
  },
  {
    "title": "2. NumPy Arrays",
    "content": """
NumPy provides a powerful N-dimensional array object, called `ndarray`, which is fast and flexible for scientific computing.
    """,
    "code": '''
import numpy as np

# Creating a NumPy array
arr = np.array([1, 2, 3, 4, 5])
print(arr)
''',
  },
  {
    "title": "3. Array Attributes",
    "content": "You can check various attributes of a NumPy array like shape, size, and data type.",
    "code": '''
# Array attributes
print("Shape:", arr.shape)  # Output: (5,)
print("Size:", arr.size)    # Output: 5
print("Data Type:", arr.dtype)  # Output: int64
''',
  },
  {
    "title": "4. Indexing and Slicing",
    "content": """
NumPy allows you to index and slice arrays similar to Python lists, but with more powerful options.
    """,
    "code": '''
# Indexing
print(arr[0])  # Output: 1

# Slicing
print(arr[1:4])  # Output: [2 3 4]
''',
  },
  {
    "title": "5. Array Operations",
    "content": """
NumPy supports element-wise operations on arrays, making it efficient for mathematical computations.
    """,
    "code": '''
# Element-wise operations
arr2 = np.array([5, 4, 3, 2, 1])
sum_array = arr + arr2
print("Sum:", sum_array)  # Output: [6 6 6 6 6]

# Scalar operations
scaled_array = arr * 2
print("Scaled:", scaled_array)  # Output: [2 4 6 8 10]
''',
  },
  {
    "title": "6. Universal Functions (ufuncs)",
    "content": """
NumPy provides a variety of functions that operate element-wise on arrays, known as universal functions or ufuncs.
    """,
    "code": '''
# Using ufuncs
sqrt_array = np.sqrt(arr)
print("Square Root:", sqrt_array)  # Output: [1.         1.41421356 1.73205081 2.         2.23606798]
''',
  },
  {
    "title": "7. Reshaping Arrays",
    "content": "You can change the shape of an array using the `reshape` method without changing its data.",
    "code": '''
# Reshaping
reshaped_array = arr.reshape(5, 1)
print(reshaped_array)
''',
  },
  {
    "title": "8. Concatenating Arrays",
    "content": "NumPy allows you to concatenate two or more arrays along a specified axis.",
    "code": '''
# Concatenating arrays
arr3 = np.array([6, 7, 8])
concatenated_array = np.concatenate((arr, arr3))
print("Concatenated Array:", concatenated_array)  # Output: [1 2 3 4 5 6 7 8]
''',
  },
  {
    "title": "9. Statistical Functions",
    "content": """
NumPy provides a suite of statistical functions for analyzing data, including mean, median, variance, etc.
    """,
    "code": '''
# Statistical functions
mean = np.mean(arr)
print("Mean:", mean)  # Output: 3.0

variance = np.var(arr)
print("Variance:", variance)  # Output: 2.0
''',
  },
  {
    "title": "10. Conclusion",
    "content": """
NumPy is an essential library for numerical computations in Python. Its efficient array operations and powerful capabilities make it the foundation for many scientific and data analysis libraries, including Pandas and SciPy.
    """,
    "code": null,
  },
];
