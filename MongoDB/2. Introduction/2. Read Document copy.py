# Find all documents in the collection
all_documents = collection.find()

# Find documents with a specific condition
specific_documents = collection.find({"city": "New York"})

# Iterate over the result cursor
for document in specific_documents:
    print(document)
