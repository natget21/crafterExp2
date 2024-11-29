// def result = searchClient.search("/site/components/vendor")
// return result

// def topNavItems = [:]
// def siteDir = siteItemService.getSiteTree("/site/website", 2)
// // def siteDir = siteItemService.getSiteTree('/site/components/categories', 1)

// if (siteDir) {
//     def dirs = siteDir.childItems
//     dirs.each { dir ->
//         def dirName = dir.getStoreName()
//         def dirItem = siteItemService.getSiteItem("/site/website/${dirName}/index.xml")
//         if (dirItem != null) {
//             def dirDisplayName = dirItem.queryValue('internal-name')
//             topNavItems.put(dirName, dirDisplayName)
//         }
//     }
// }

// return topNavItems

// def searchResponse = searchClient.search(r -> r
//   .query(q -> q
//     .bool(b -> b
//       .should(s -> s
//         .match(m -> m
//           .field('content-type')
//           .query(v -> v
//             .stringValue('/component/vendor')
//           )
//         )
//       )
//     )
//   )
// , Map)

// def itemsFound = searchResponse.hits().total().value()
// def items = searchResponse.hits().hits()*.source()

// return items

// def searchResponse = searchClient.search {
//     query = "content-type:/component/vendor"
//     rows = 10
// }
// return [
//     vendors: searchResponse.documents.collect { doc ->
//         [
//             name: doc.properties['name']?.stringValue,
//             link: doc.properties['link']?.stringValue,
//             logo: doc.properties['logo']?.stringValue
//         ]
//     }
// ]


// def item = siteItemService.getSiteTree('/site/components/categories', 1)

// return item



def topNavItems = [:]

def siteDir = siteItemService.getSiteTree('/site/components/categories', 1)

if (siteDir) {
    def dirs = siteDir.childItems
    dirs.each { dir ->
        def dirName = dir.getStoreName()
        def dirItem = siteItemService.getSiteItem(dir.storeUrl)
        if (dirItem != null) {
            def dirDisplayName = dirItem.queryValue('internal-name')
            topNavItems.put(dirName, dirDisplayName)
        }
    }
}

return topNavItems
