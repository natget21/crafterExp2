import org.craftercms.engine.controller.AbstractContentController

class ProductDetailController extends AbstractContentController {

    @Override
    Map handleRequest() {
        def model = [:]
        model['dummy'] = "Funziona! 🎉"
        return model
    }
}
