<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign storeUrl = "/site/components/category/" + RequestParameters.id />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <#assign category = siteItemService.getSiteItem(storeUrl) />
        <#assign name = category.queryValue("internal-name")?default("Categoria non trovata") />

        <div class="banner_section banner_services layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/servizi.png">
            <div class="container">
              <h1 class="best_taital text-center text-white p-0 dark">${name}</h1>
            </div>
        </div>
      
        <#if category?has_content>
            <#assign description = category.queryValue("description_html")?default("Vuoto") />
            <h5>${name}:</h5>
            <div>${description}</div>
        <#else>
            <h5>404</h5>
        </#if>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>