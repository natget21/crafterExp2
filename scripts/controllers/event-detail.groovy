import org.craftercms.engine.content.*
import org.craftercms.engine.controller.*
import org.springframework.stereotype.*
import javax.servlet.http.*

@Controller
class EventDetailController {

    @RequestMapping("/event-detail")
    def handle(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

        def eventId = request.getParameter("id")
        def searchQuery = 'eventi_o.id_s:"' + eventId + '" AND content-type:"/page/pageevents"'
        def results = searchService.search(searchQuery, 0, 1)

        if (!results.isEmpty()) {
            def page = results[0].getXml()
            def items = page."eventi_o"."item"
            def matchingEvent = items.find { it."id_s".text() == eventId }
            model.put("event", matchingEvent)
        }

        return "templates/web/pages2/event-detail.ftl"
    }
}
