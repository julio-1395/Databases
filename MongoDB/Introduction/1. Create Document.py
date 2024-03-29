# Using PyMongo in Python
import pymongo

# Connect to MongoDB server
client = pymongo.MongoClient("mongodb://localhost:27017/")

# Select database and collection
db = client["mydatabase"]
collection = db["mycollection"]

# Insert a single document
document = {"name": "John", "age": 30, "city": "New York"}
collection.insert_one(document)

# Insert multiple documents
documents = [
    {"name": "Alice", "age": 25, "city": "London"},
    {"name": "Bob", "age": 35, "city": "Paris"}
]
collection.insert_many(documents)
