
def items = contentService.getContentStore().getObjects("/site/components/services/")

return [
    status: 200,
    itemsFound: items.size(),
    items: items
]