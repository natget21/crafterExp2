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
        
        <div class="container">
            <#if partner?? && partner?has_content>
                <h1 class="best_taital text-center text-white p-0">${partner.partnerAzienda}</h1>
            <#else>
                <h1 class="best_taital text-center text-white p-0">Partner Not Found</h1>
            </#if>
        </div>
        
        <div  class="container">
            <#if partner?? && partner?has_content>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-4">
                            <#if partner.partnerCompanyLogoUrl??>
                                <img src="${partner.partnerCompanyLogoUrl?default("")}" alt="${partner.partnerAzienda?default("")}" class="img-fluid">
                            </#if>
                        </div>
                        <div class="col-md-8">
                            <h2>${partner.partnerLandingTitle?default("")}</h2>
                            <div>${partner.partnerLandingIntroduction?no_esc?default("")}</div>
                            <div>${partner.partnerLandingContent?no_esc?default("")}</div>
                            <ul class="list-unstyled mt-3">
                                <li><strong>Contact:</strong> ${partner.partnerContatto?default("")}</li>
                                <li><strong>Email:</strong> ${partner.partnerContactEmail?default("")}</li>
                                <li><strong>Phone:</strong> ${partner.partnerTelephone?default("")}</li>
                                <li><strong>Region:</strong> ${partner.partnerRegione?default("")}</li>
                                <li><strong>Country:</strong> ${partner.partnerNazione?default("")}</li>
                                <li><strong>Sector:</strong> ${partner.partnerSettore?default("")}</li>
                                <li><strong>Staff Size:</strong> ${partner.partnerStaffSize?default("")}</li>
                                <li><strong>Status:</strong> ${partner.partnerStatus?default("")}</li>
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
