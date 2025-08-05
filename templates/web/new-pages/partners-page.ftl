<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <div class="content pb-5">
            <div class="banner_section banner_partners layout_padding d-flex align-items-center">
                <img class="banner_img" src="static-assets/assets/partner.png">
                <div class="container">
                  <h1 class="best_taital text-center dark p-0">Partners</h1>
                </div>
            </div>
            <div class="layout_padding partners_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0">
                <div class="row row-gap-5">
                    <#list partners as partner>
                        <#if partner.partnerCompanyLogoUrl?? && !partner.partnerCompanyLogoUrl?lower_case?contains("script")>
                            <div class="partner col-12 d-flex flex-column gap-3">
                                <div class="d-flex flex-column flex-md-row justify-content-between gap-5 align-items-center">
                                    <div class="partner_logo_container w-100">
                                        <#if partner.partnerCompanyLogoUrl?? && !partner.partnerCompanyLogoUrl?lower_case?contains("script")>
                                            <img class="partner_logo" src="${partner.partnerCompanyLogoUrl}" alt="" />
                                        </#if>
                                    </div>
                                    <div class="col-12 col-md-8">
                                        <h3>${partner.partnerAzienda}</h3>
                                        <#assign cleanedIntro = partner.partnerLandingIntroduction?replace("(?i)<(?!/?p\\b)[^>]*>", "<p>", "r")?replace("(?i)</p>\\s*<p>", "</p><br><p>", "r") />
                                        <label class="text-justified fs-5 fw-normal">${cleanedIntro}</label>
                    
                                        <div class="d-flex flex-grow-1 justify-content-end align-items-end mt-3">
                                            <a href="/partner-view?id=${partner.id}" class="btn btn-secondary read_more rounded-pill">
                                                Scopri di più
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </#if>
                    </#list>
                </div>
            </div>
        </div>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>
