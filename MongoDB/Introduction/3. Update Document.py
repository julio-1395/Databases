# Update a single document
collection.update_one({"name": "John"}, {"$set": {"age": 31}})

# Update multiple documents
collection.update_many({"city": "London"}, {"$set": {"city": "Manchester"}})
