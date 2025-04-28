def contentStoreService = engine.getContentStoreService()

def allItems = contentStoreService.getObjects("/site/components/services/")

// def filteredItems = allItems.findAll { it.get("subcategory_s") == "your-subcategory" }

return [
    status: 200,
    itemsFound: allItems.size(),
    items: allItems
]