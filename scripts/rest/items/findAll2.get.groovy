// def searchResponse = searchClient.search(
//   [
//     query: [
//       bool: [
//         must: [
//           [
//             wildcard: [
//               "localId" : "/site/components/services/*"
//             ]
//           ]
//         ]
//       ]
//     ],
//     size: 1000  // fetch up to 1000 results
//   ]
// )

// def allItems = searchResponse.response.docs

// def filteredItems = allItems.findAll { 
//   it.subcategory_s == "your-subcategory"
// }

// return [
//     status: 200,
//     itemsFound: allItems.size(),
//     items: allItems
// ]




// 1. Walk the services folder


// def loadComponent(path) {
//   def ci = siteItemService.getSiteItem(path)
//   if (!ci) return null

//   def result = [:]
//   // Scalar fields
//   ["name_s","rootId","internal-name","objectGroupId","costo_s","localId"].each { f ->
//     result[f] = ci.queryValue(f) ?: ""
//   }
//   // Handle lists of primitive fields if needed...
  
//   // Recursive object field: subcategory_o
//   result.subcategory_o = [
//     item: ci.queryValues("subcategory_o/item").collect { itemNode ->
//       def includePath = itemNode.queryValue("include")
//       [
//         include: includePath,
//         component: loadComponent(includePath),      // recursion
//         value:     itemNode.queryValue("value"),
//         disableFlattening: itemNode.queryValue("disableFlattening"),
//         key:       itemNode.queryValue("key")
//       ]
//     }
//   ]
//   return result
// }

// // 2. Load and map each component recursively
// def items = tree.childItems.collect { child ->
//   loadComponent(child.path)
// }

// 3. Return as JSON















def tree = siteItemService.getSiteTree("/site/components/services", 3)

def findNonFolderItems(node) {
    def items = []
    
    // Check if the current node is not a folder
    if (node.folder == false) {
        items.add(node)
    }
    
    // If there are children, recursively check them
    if (node.children && node.children.size() > 0) {
        node.children.each { child ->
            items.addAll(findNonFolderItems(child)) // Recursively find non-folder children
        }
    }
    
    return items
}

// Assuming your tree structure is like the one in the sample you provided, starting with `items`
def allItems = []

// Traverse each top-level item in the tree
tree.items.each { item ->
    // Assuming that the 'item' field is the entry point to the tree structure
    allItems.addAll(findNonFolderItems(item.item)) // Passing 'item.item' as the root node
}

// Return the list of non-folder items found
return [
    status: 200,
    itemsFound: allItems.size(),
    items: allItems
]