import org.craftercms.engine.service.ContentStoreService
import org.springframework.web.context.support.WebApplicationContextUtils

def ctx = WebApplicationContextUtils.getWebApplicationContext(request.servletContext)
def contentStoreService = ctx.getBean(ContentStoreService)

def allItems = contentStoreService.getObjects("/site/components/services/")

// def filteredItems = allItems.findAll { it.get("subcategory_s") == "your-subcategory" }

return [
    status: 200,
    itemsFound: allItems.size(),
    items: allItems
]
