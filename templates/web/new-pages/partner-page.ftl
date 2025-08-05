<#import "/templates/system/common/crafter.ftl" as crafter />

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
    
        <div class="content pb-5 layout_padding col-11 col-md-9 mx-auto">
          <div class="d-flex flex-column flex-md-row">
            <div class="col-12 col-sm-7">
              <h3 class="title_section">${partner.partnerAzienda}</h3>
              <div class="text-justified fs-5 fw-normal" for="">
                ${partner.partnerLandingIntroduction?default("Nessuna introduzione")}
                ${partner.partnerLandingContent?default("Nessun contenuto")}
              </div>
            </div>
            <div class="col-12 col-sm-5">
              <img src="${partner.partnerCompanyLogoUrl?default("")}" alt="${partner.partnerAzienda?default("")}" class="logo w-100" />
            </div>
          </div>
        </div>
  
        <div class="container mb-3">
            <div class="accordion" id="productsAccordion">
                <!-- Scheda informativa -->
                <div class="accordion-item rounded-3 shadow-sm">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed fs-6 fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#productOne" aria-expanded="false" aria-controls="productOne">
                          Scheda informativa
                        </button>
                    </h2>
                    <div id="productOne" class="accordion-collapse collapse" data-bs-parent="#productsAccordion">
                        <div class="accordion-body px-4 py-3">
                            <div class="row g-4">
                                <div class="col-12 col-md-6 col-lg-4">
                                  <p class="fs-6 text-muted mb-1">Ragione sociale</p>
                                  <p class="fs-6 desc">${partner.partnerAzienda?default("-----")}</p>
                                </div>
                                <div class="col-12 col-md-6 col-lg-8">
                                  <p class="fs-6 text-muted mb-1">Partita IVA</p>
                                  <p class="fs-6 desc">${partner.partnerPiva?default("-----")}</p>
                                </div>
                                <div class="col-12 col-md-6 col-lg-4">
                                  <p class="fs-6 text-muted mb-1">Indirizzo</p>
                                  <p class="fs-6 desc">${partner.partnerNazione?default("-----")}</p>
                                </div>
                                <div class="col-12 col-md-6 col-lg-4">
                                  <p class="fs-6 text-muted mb-1">Email</p>
                                  <p class="fs-6 desc">${partner.partnerContactEmail?default("-----")}</p>
                                </div>
                                <div class="col-12 col-md-6 col-lg-4">
                                  <p class="fs-6 text-muted mb-1">Telefono</p>
                                  <p class="fs-6 desc">${partner.partnerTelephone?default("-----")}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
            </div>
        </div>




        
       
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>
