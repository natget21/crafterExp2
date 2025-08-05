<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        

        <div class="banner_section banner_partners layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/partner.png" />
            <div class="container">
                <h1 class="best_taital text-center dark p-0">Partner</h1>
            </div>
        </div>
        
        <div class="banner_section banner_partners layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/partner.png">
            <div class="container">
                <h1 class="best_taital text-center dark p-0">Partner</h1>
            </div>
        </div>
 



        
       
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>
