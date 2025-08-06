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
                
                <#assign image = "https://thumb.ac-illust.com/b1/b170870007dfa419295d949814474ab2_t.jpeg" />
                <div class="col-md-4">
                    <div class="card h-100 shadow-sm">
                        <img src="${image}" class="card-img-top" alt="Notte d’Estate in Terrazza">
                        <div class="card-body">
                            <h3 class="text-primary text-uppercase">Notte d’Estate in Terrazza</h3>
                            <p class="card-text small text-body-secondary">
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