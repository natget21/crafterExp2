<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign partnerId = RequestParameters.id />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <div class="banner_section banner_partners layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/partner.png">
            <div class="container">
              <h1 class="best_taital text-center dark p-0">Partner</h1>
            </div>
        </div>
      
        <div class="container" id="partner-info" style="display: none">
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
                            <li><strong>Contact:</strong> <span id="partner-contact"></span></li>
                            <li><strong>Email:</strong> <span id="partner-email"></span></li>
                            <li><strong>Phone:</strong> <span id="partner-phone"></span></li>
                            <li><strong>Region:</strong> <span id="partner-region"></span></li>
                            <li><strong>Country:</strong> <span id="partner-country"></span></li>
                            <li><strong>Sector:</strong> <span id="partner-sector"></span></li>
                            <li><strong>Staff Size:</strong> <span id="partner-staff-size"></span></li>
                            <li><strong>Status:</strong> <span id="partner-status"></span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>

<script>
    document.addEventListener("DOMContentLoaded", async function () {
        await loadPartner();
        console.log("DEBUG", ${test})
    });
    
    async function loadPartner() {
        const url = "https://api.shortcut.uno/v1/Ideale-partner/findOne?partnerId=${partnerId}";
        const headers = { "Authorization": "Bearer ${token}" };
        const response = await fetch(url, { method: 'GET', headers });
        if(response.ok) {
            const partner = await response.json();
            if(partner) {
                document.getElementById("partner-info").style.display = "block";
                // document.getElementById("partner-title").textContent = partner.partnerAzienda || "";
                document.getElementById("partner-logo").src = partner.partnerCompanyLogoUrl || "";
                document.getElementById("partner-landing-title").textContent = partner.partnerLandingTitle || "";
                document.getElementById("partner-landing-introduction").innerHTML = partner.partnerLandingIntroduction || "";
                document.getElementById("partner-landing-content").innerHTML = partner.partnerLandingContent || "";
                document.getElementById("partner-contact").textContent = partner.partnerContatto || "";
                document.getElementById("partner-email").textContent = partner.partnerContactEmail || "";
                document.getElementById("partner-phone").textContent = partner.partnerTelephone || "";
                document.getElementById("partner-region").textContent = partner.partnerRegione || "";
                document.getElementById("partner-country").textContent = partner.partnerNazione || "";
                document.getElementById("partner-sector").textContent = partner.partnerSettore || "";
                document.getElementById("partner-staff-size").textContent = partner.partnerStaffSize || "";
                document.getElementById("partner-status").textContent = partner.partnerStatus || "";
            }
        }
    }
</script>
