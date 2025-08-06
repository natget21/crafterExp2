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
                <#assign events = siteItemService.getSiteTree('/site/components/events', 1)>
                <#list events.childItems as child>
                    <#assign event = siteItemService.getSiteItem(child.storeUrl) />
                    <#assign name = event.title_s?default("Nessun titolo") />
                    <#assign description = event.description_t?default("Nessuna descrizione") />
                    <#assign image = event.image_s?default("https://thumb.ac-illust.com/b1/b170870007dfa419295d949814474ab2_t.jpeg") />
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm">
                            <img src="${image}" class="card-img-top" alt="${name}">
                            <div class="card-body">
                                <h5 class="text-primary text-uppercase">${name}</h5>
                                <p class="card-text small text-body-secondary">
                                    ${description}
                                </p>
                            </div>
                        </div>
                    </div>
                </#list>
            </div>
            
            
            
            <div class="row g-0">
                    <div class="col-md-5">
                        <img src="https://www.edih4marche.eu/wp-content/uploads/elementor/thumbs/cyber-security-article-r3itn6mf44gxx1olsft3f0jnwfvacf3svkvdgomqvo.jpg" class="img-fluid rounded-start object-fit-cover h-100" alt="AI Matters">
                    </div>
                    <div class="col-md-7">
                      <div class="card-body d-flex flex-column h-100">
                          <small class="text-muted d-block mb-1">
                            3 Aprile, 2025
                          </small>
                          <h5 class="card-title fw-bold">
                            Roadshow AI MATTERS: “L’Ai che fa la differenza nel manifatturiero”
                          </h5>
                          <p class="card-text">
                            Un'opportunità per conoscere da vicino soluzioni di intelligenza artificiale dedicate al mondo manifatturiero. Tappa marchigiana – Jesi, 10 aprile 2024
                          </p>
                        <div class="flex-grow-1 d-flex align-items-end justify-content-center">
                          <a href="/news-detail" class="btn btn-secondary btn-sm read_more rounded-pill">
                            Scopri di più
                          </a>
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