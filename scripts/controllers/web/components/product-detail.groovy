import org.craftercms.engine.controller.AbstractContentController

class ProductDetailController extends AbstractContentController {

    @Override
    Map handleRequest() {
        log.info("✅ Controller DUMMY eseguito!")
        def model = [:]
        model['dummy'] = "Controller attivo 🎉"
        return model
    }
}
