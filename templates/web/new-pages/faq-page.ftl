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
            <h3 class="text-center text-primary mb-3">Hai dei dubbi? Consulta le domande frequenti</h3>
            
            <#assign categories = siteItemService.getSiteTree("/site/components/faqs", 1)>
            <#list categories.childItems as item>
                <#assign category = siteItemService.getSiteItem(item.storeUrl) />
                ${category.title_s}
            </#list>
        </div>
    
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>