import org.craftercms.core.context.CrafterContext
import org.craftercms.engine.controller.ControllerBase

class MyPageController extends ControllerBase {

    @Override
    Map handleRequest() {
        def model = [:]
        model.put("test", "Ciao dal controller Groovy!")
        return model
    }
