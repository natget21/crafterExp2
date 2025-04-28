def searchResponse = searchClient.search(
  [
    query: [
      bool: [
        must: [
          [
            wildcard: [
              "localId" : "/site/components/services/*"
            ]
          ]
        ]
      ]
    ],
    size: 1000  // fetch up to 1000 results
  ]
)

def allItems = searchResponse.response.docs

def filteredItems = allItems.findAll { 
  it.subcategory_s == "your-subcategory"
}

return [
    status: 200,
    itemsFound: allItems.size(),
    items: allItems
]


