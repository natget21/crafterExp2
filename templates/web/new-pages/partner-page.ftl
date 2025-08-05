<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <p>${test}</p>
        
        <div class="banner_section banner_partners layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/partner.png">
            <div class="container">
              <h1 class="best_taital text-center dark p-0">${partner.partnerAzienda}</h1>
            </div>
        </div>
        
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-4">
                    <img id="partner-logo" class="img-fluid" alt="">
                </div>
                <div class="col-md-8">
                    <h2 id="partner-landing-title"></h2>
                    <div id="partner-landing-introduction"></div>
                    <div id="partner-landing-content"></div>
                    <ul class="list-unstyled mt-3">
                        <li><strong>Contact:</strong> Partner Contact</li>
                        <li><strong>Email:</strong> Partner Email</li>
                        <li><strong>Phone:</strong> Partner Phone</li>
                        <li><strong>Region:</strong> Partner Region</li>
                        <li><strong>Country:</strong> Partner Country</li>
                        <li><strong>Sector:</strong> Partner Sector</li>
                        <li><strong>Staff Size:</strong> Partner Staff Size</li>
                        <li><strong>Status:</strong> Partner Status</li>
                    </ul>
                </div>
            </div>
        </div>
       


        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>
