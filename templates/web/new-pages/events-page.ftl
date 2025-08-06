<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <div class="banner_section banner_services layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/eventi.png">
            <div class="container">
                <h1 class="best_taital text-center text-white p-0 dark">Eventi</h1>
            </div>
        </div>
 
        <div class="container mb-5">
            <div class="row g-4">
            
                <div class="col-md-6">
                    <div class="card h-100 shadow-sm">
                        <img src="data:image/png;base64,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" class="card-img-top" alt="Notte d’Estate in Terrazza">
                        <div class="card-body">
                            <h5 class="card-title">Notte d’Estate in Terrazza</h5>
                            <p class="card-text">
                                Una serata elegante sotto le stelle con degustazione di vini, finger food e musica jazz dal vivo in terrazza.
                            </p>
                        </div>
                    </div>
                </div>
 
            </div>
        </div>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>