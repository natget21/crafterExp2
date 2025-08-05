<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
 
        <div class="content pb-5">
          <div class="banner_section banner_services layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/servizi.png">
            <div class="container">
              <h1 class="best_taital text-center text-white p-0 dark">
                Servizi Digitali
              </h1>
            </div>
          </div>
    
        <div class="services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0 mb-4">
            <#if categories?has_content>
                <#list categories.childItems as categoryItem>
                    <#assign category = siteItemService.getSiteItem(categoryItem.storeUrl) />
                    <#assign name = category.queryValue("name_s")?default("") />
                    <#assign description = category.queryValue("description_t")?default("") />
                    <#assign image = category.queryValue("image_s")?default("") />
                    <div class="service mt-5 d-flex justify-content-between align-items-center">
                        <div class="d-flex flex-column align-items-center justify-content-center">
                            <h3 class="service_title text-center">${name}</h3>
                            <p class="text-center">${description}</p>
                            <div class="d-flex flex-grow-1 justify-content-center align-items-end">
                              <a href="/service-view?id=${category.storeName}" class="btn btn-secondary read_more rounded-pill">
                                Scopri di più
                              </a>
                            </div>
                        </div>
                        <img src="/static-assets/assets/formazione-1.jpg" alt="">
                    </div>
                </#list>
            </#if>
        </div>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>