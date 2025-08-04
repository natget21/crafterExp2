<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign partnerId = RequestParameters.id />
<#assign partner = {} />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <div class="content pb-5">
            <div class="banner_section banner_partners layout_padding d-flex align-items-center">
               <h1 class="best_taital text-center text-white p-0">Partners</h1>
            </div>
        </div>
        

        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>
