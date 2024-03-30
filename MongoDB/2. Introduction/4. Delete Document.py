# Delete a single document
collection.delete_one({"name": "John"})

# Delete multiple documents
collection.delete_many({"city": "London"})
