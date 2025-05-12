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


def tree = siteItemService.getSiteTree("/site/components/services", 4)

// def items = tree.findAll { item -> item}.collect { item -> item.childItems.item}
// def items = tree.collect { item -> item.childItems.item}

// def items = tree.collectMany { item ->
//     item.childItems?.item?.collect { childItem -> childItem.children ?: [] }.flatten()
// }

def items = tree.collect { item ->
    item.childItems?.item?.collect { childItem -> childItem.children ?: [] }
}.flatten()

// def itemsAll = items.collect { item ->
//     item.children?.collect { childItem -> {
//         def new_item = childItem.descriptorDom
//         new_item["localId"] = childItem.url
//         return new_item
        
//     } }
// }.flatten()

// def itemsAll = items.collect { item ->
//     item.children?.collect { childItem ->
//         return [
//             descriptorDom: childItem.descriptorDom,
//             localId     : childItem.url,
//             rootId     : "ideale:"+childItem.url
//         ]
//     }
// }.flatten()

def itemsAll = items.collect { item ->
    item.children?.collect { childItem ->
        def flatItem = [:]
        flatItem.putAll(childItem.descriptorDom?.component ?: [:])  // Flatten 'component'
        flatItem["localId"] = childItem.url
        flatItem["rootId"] = childItem.root
        return flatItem
    }
}.flatten()

// Return the result
return [
    status: 200,
    itemsFound: itemsAll.size(),
    items: itemsAll
]
