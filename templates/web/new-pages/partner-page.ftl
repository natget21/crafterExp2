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
        
        <div class="content pb-5 layout_padding col-11 col-md-9 mx-auto">
          <div class="row d-flex flex-column flex-md-row">
            <div class="col-12 col-md-7">
              <h3 class="title_section">${partner.partnerAzienda}</h3>
              <div class="text-justified fs-5 fw-normal">
                ${partner.partnerLandingIntroduction?default("Nessuna introduzione")}
                ${partner.partnerLandingContent?default("Nessun contenuto")}
              </div>
            </div>

          </div>
        </div>
 




        
       
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>
