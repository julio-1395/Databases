from pymongo import MongoClient

# Connect to MongoDB
client = MongoClient('mongodb://localhost:27017/')

# Access a database
db = client['mydatabase']

# Access a collection
collection = db['mycollection']

# Query the collection
for document in collection.find():
    print(document)
