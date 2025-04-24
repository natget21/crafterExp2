def searchResponse = searchClient.search(r -> r
    .query(q -> q
        .bool(b -> b
            
            .must(m -> m
                .wildcard(w -> w
                    .field("localId")
                    .value("/site/components/services/*")
                )
            )
        )
    )
, Map)

def itemsFound = searchResponse.hits().total().value()
def items = searchResponse.hits().hits()*.source()

return [
    status: 200,
    itemsFound:itemsFound,
    items: items
]