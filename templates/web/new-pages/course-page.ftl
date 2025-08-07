<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign storeUrl = RequestParameters.storeUrl?default("") />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <#assign course = siteItemService.getSiteItem(storeUrl) />
        <#if course?has_content>
            <h5>${course}</h5>
        <#else>
            <h5>Nessun corso trovato.</h5>
        </#if>
        
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>