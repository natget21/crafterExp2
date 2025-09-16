<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <div class="banner_section banner_services layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/faq.png">
            <div class="container">
                <h1 class="best_taital text-center text-white p-0 dark">Faq</h1>
            </div>
        </div>
        
        <div class="container">
            <h3 class="text-center text-primary mb-5">Hai dei dubbi? Consulta le domande frequenti</h3>
            
            <#assign categories = siteItemService.getSiteTree("/site/components/faqs", 1)>
            <#list categories.childItems as item>
                <#assign category = siteItemService.getSiteItem(item.storeUrl) />
                <h4 class="text-primary">${category.title_s}</h4>
                <#assign counter = 0 />
                <#list category.list_o.item as faq>
                    <div class="accordion mb-3" id="accordion-${counter}">
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button
                                    class="accordion-button faq-question collapsed text-white fs-3"
                                    style="background-color: #32509f; font-size: 1rem !important;"
                                    type="button"
                                    data-bs-toggle="collapse"
                                    data-bs-target="#accordion-button-${counter}"
                                    aria-expanded="false"
                                    aria-controls="accordion-button-${counter}"
                                  >
                                    Hello World Title
                                  </button>
                            </h2>
                            <div id="accordion-button-${counter}" class="accordion-collapse collapse" data-bs-parent="accordion-${counter}">
                                <div class="accordion-body row row-gap-5">
                                    <div class="col-12 info">
                                          <p class="desc" style="font-size: 1rem !important;">Hello World Body</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </#list>
            </#list>
        </div>
    
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>