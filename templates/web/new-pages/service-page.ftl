<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign storeUrl = "/site/components/category/" + RequestParameters.id />
<#assign category = siteItemService.getSiteItem(storeUrl) />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
 
        <#if category?has_content>
            <#assign name = category.queryValue("internal-name")?default("") />
            <#assign description = category.queryValue("description")?default("") />
            <h5>${name}: ${storeUrl}</h5>
            <div>${description}</div>
        <#else>
            <h5>404</h5>
        </#if>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>