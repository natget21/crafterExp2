<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <p>${test}</p>
        
        <#if partner?has_content>
            <div class="banner_section banner_partners layout_padding d-flex align-items-center">
                <img class="banner_img" src="static-assets/assets/partner.png">
                <div class="container">
                  <h1 class="best_taital text-center dark p-0">${partner.partnerAzienda}</h1>
                </div>
            </div>
            
            <div class="container mt-5">
                <div class="row">
                    <div class="col-md-4">
                        <#list partner.partnerLandingImagesAssetsUrlList as image>
                            <img src="${image}" class="img-fluid mb-1" alt="${partner.partnerAzienda}">
                        </#list>
                    </div>
                    <div class="col-md-8">
                        <h2 id="partner-landing-title"></h2>
                        <div id="partner-landing-introduction"></div>
                        <div id="partner-landing-content"></div>
                        <ul class="list-unstyled mt-3">
                            <li><strong class="me-1">Contact:</strong>${partner.partnerAzienda}</li>
                            <li><strong class="me-1">Email:</strong> Partner Email</li>
                            <li><strong class="me-1">Phone:</strong> Partner Phone</li>
                            <li><strong class="me-1">Region:</strong> Partner Region</li>
                            <li><strong class="me-1">Country:</strong> Partner Country</li>
                            <li><strong class="me-1">Sector:</strong> Partner Sector</li>
                            <li><strong class="me-1">Staff Size:</strong> Partner Staff Size</li>
                            <li><strong class="me-1">Status:</strong> Partner Status</li>
                        </ul>
                    </div>
                </div>
            </div>
        <#else>
            <div class="banner_section banner_partners layout_padding d-flex align-items-center">
                <img class="banner_img" src="static-assets/assets/partner.png">
                <div class="container">
                  <h1 class="best_taital text-center dark p-0">Partner non trovato!</h1>
                </div>
            </div>
        </#if>
       


        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>
