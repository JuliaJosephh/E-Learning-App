const List<Map<String, dynamic>> MLContent = [
  {
    "title": "1. Linear Regression",
    "content": """
Linear regression is a simple algorithm used to predict a continuous target variable based on one or more predictor variables.
    """,
    "code": '''
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

# Sample dataset
data = {'X': [1, 2, 3, 4, 5], 'y': [2, 3, 5, 7, 11]}
df = pd.DataFrame(data)

# Splitting the dataset
X = df[['X']]
y = df['y']
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Creating the model
model = LinearRegression()
model.fit(X_train, y_train)

# Making predictions
y_pred = model.predict(X_test)

# Evaluating the model
mse = mean_squared_error(y_test, y_pred)
print(f'Mean Squared Error: {mse}')
''',
    "url": "https://youtu.be/CtsRRUddV2s?si=t-OfcDKWiTVtL0vf"
  },
  {
    "title": "2. Logistic Regression",
    "content": """
Logistic regression is used for binary classification problems. It predicts the probability that a given input belongs to a particular category.    """,
    "code": '''
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score

# Load dataset
iris = load_iris()
X = iris.data
y = (iris.target == 0).astype(int)  # Binary classification: class 0 vs others

# Splitting the dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Creating the model
model = LogisticRegression()
model.fit(X_train, y_train)

# Making predictions
y_pred = model.predict(X_test)

# Evaluating the model
accuracy = accuracy_score(y_test, y_pred)
print(f'Accuracy: {accuracy}')
''',
    "url": "https://youtu.be/yIYKR4sgzI8?si=qrRAWIV7t7qJsBU-"
  },
  {
    "title": "3. Decision Tree Classifier",
    "content": """
 Decision trees are a non-parametric supervised learning method used for classification and regression. They create a model based on splitting the data into branches.    """,
    "code": '''
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score

# Load dataset
iris = load_iris()
X = iris.data
y = iris.target

# Splitting the dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Creating the model
model = SVC(kernel='linear')
model.fit(X_train, y_train)

# Making predictions
y_pred = model.predict(X_test)

# Evaluating the model
accuracy = accuracy_score(y_test, y_pred)
print(f'Accuracy: {accuracy}')
''',
    "url": "https://youtu.be/ZVR2Way4nwQ?si=83AODsSwQl7Rsgba"
  },
  {
    "title": "5. K-Means Clustering",
    "content": """
K-means is an unsupervised learning algorithm used to partition the dataset into K distinct clusters based on feature similarity.""",
    "code": '''
import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans

# Generate synthetic dataset
X, y = make_blobs(n_samples=300, centers=4, random_state=42)

# Creating the model
model = KMeans(n_clusters=4)
model.fit(X)

# Getting the cluster labels
labels = model.labels_

# Plotting the results
plt.scatter(X[:, 0], X[:, 1], c=labels, cmap='viridis')
plt.scatter(model.cluster_centers_[:, 0], model.cluster_centers_[:, 1], c='red', marker='X')
plt.title('K-Means Clustering')
plt.xlabel('Feature 1')
plt.ylabel('Feature 2')
plt.show()
}')
''',
    "url": "https://youtu.be/4b5d3muPQmA?si=YdYt71wDoCVYDsZ5"
  },
  {
    "title": "6. Random Forest Classifier",
    "content": """
Random Forest is an ensemble learning method that constructs multiple decision trees during training and outputs the mode of the classes.    """,
    "code": '''
from sklearn.datasets import load_iris
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score

# Load dataset
iris = load_iris()
X = iris.data
y = iris.target

# Splitting the dataset
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Creating the model
model = RandomForestClassifier(n_estimators=100)
model.fit(X_train, y_train)

# Making predictions
y_pred = model.predict(X_test)

# Evaluating the model
accuracy = accuracy_score(y_test, y_pred)
print(f'Accuracy: {accuracy}')

''',
    "url": "https://youtu.be/v6VJ2RO66Ag?si=OaWujGtC4JR58XST"
  }
];
