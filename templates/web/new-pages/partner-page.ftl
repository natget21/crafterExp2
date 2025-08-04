<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign partnerId = RequestParameters.id />

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
        
        <div class="container">

         
            <#-- Display partner details if data is available -->
            <#if partnerData?has_content>
                <h1 class="best_taital text-center text-white p-0">${partnerData.partnerAzienda}</h1>
            <#else>
                <h1 class="best_taital text-center text-white p-0">Partner Not Found</h1>
            </#if>
        </div>
        
        <div  class="container">
           
            <#if partnerData?has_content>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-4">
                            <#if partnerData.partnerCompanyLogoUrl??>
                                <img src="${partnerData.partnerCompanyLogoUrl?default("")}" alt="${partnerData.partnerAzienda?default("")}" class="img-fluid">
                            </#if>
                        </div>
                        <div class="col-md-8">
                            <h2>${partnerData.partnerLandingTitle?default("")}</h2>
                            <div>${partnerData.partnerLandingIntroduction?no_esc?default("")}</div>
                            <div>${partnerData.partnerLandingContent?no_esc?default("")}</div>
                            <ul class="list-unstyled mt-3">
                                <li><strong>Contact:</strong> ${partnerData.partnerContatto?default("")}</li>
                                <li><strong>Email:</strong> ${partnerData.partnerContactEmail?default("")}</li>
                                <li><strong>Phone:</strong> ${partnerData.partnerTelephone?default("")}</li>
                                <li><strong>Region:</strong> ${partnerData.partnerRegione?default("")}</li>
                                <li><strong>Country:</strong> ${partnerData.partnerNazione?default("")}</li>
                                <li><strong>Sector:</strong> ${partnerData.partnerSettore?default("")}</li>
                                <li><strong>Staff Size:</strong> ${partnerData.partnerStaffSize?default("")}</li>
                                <li><strong>Status:</strong> ${partnerData.partnerStatus?default("")}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </#if>
        </div>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>
