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
            <h1 id="partner-title" class="best_taital text-center text-white p-0">Loading...</h1>
        </div>
        
        <div class="container" id="partner-info">
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
        const partenersLinkContainer = document.getElementById("partners-link-list");
        if(partenersLinkContainer) { await loadPartners(partenersLinkContainer); }
    });
    
    async function loadPartners(container) {
        localStorage.setItem("loading-partners", true);
        const url = "https://api.shortcut.uno/v1/Ideale-partner/getAllPartners";
        const headers = { "Authorization": "Bearer ${token}" };        
        const response = await fetch(url, { method: 'GET', headers });
        if(response.ok) {
            const partners = await response.json() ?? [];
            console.log("Partners", partners);
            for(let partner of partners) {
                const link = document.createElement("a");
                link.href = "/partner-page?id=" + partner.id;
                link.textContent = partner.partnerAzienda;
                link.className = "nav-item nav-link sublink py-2";
                container.appendChild(link);
            }
        }
    }
</script>
