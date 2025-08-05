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

    <div class="content pb-5 layout_padding col-11 col-md-9 mx-auto">
      <div class="d-flex flex-column flex-md-row">
        <div class="col-12 col-md-7">
          <h3 class="title_section">${partnerData.partnerAzienda}</h3>
          <div class="text-justified fs-5 fw-normal" for="">
            ${partnerData.partnerLandingIntroduction?default("Nessuna introduzione")}
            ${partnerData.partnerLandingContent?default("Nessun contenuto")}
          </div>
        </div>
        <div class="col-12 col-md-5">
          <img src="${partnerData.partnerCompanyLogoUrl?default("")}" alt="${partnerData.partnerAzienda?default("")}" class="logo" />
        </div>
      </div>
    </div>
  
  
  <style>
  .desc {
    text-align: justify;
  }
</style>

<div class="layout_padding mb-3">
  <div class="accordion" id="productsAccordion">
    
    <!-- Scheda informativa -->
    <div class="accordion-item rounded-3 shadow-sm">
      <h2 class="accordion-header">
        <button
          class="accordion-button collapsed fs-6 fw-bold"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#productOne"
          aria-expanded="false"
          aria-controls="productOne"
        >
          Scheda informativa
        </button>
      </h2>
      <div
        id="productOne"
        class="accordion-collapse collapse"
        data-bs-parent="#productsAccordion"
      >
        <div class="accordion-body px-4 py-3">
          <div class="row g-4">
            <div class="col-12 col-md-6 col-lg-4">
              <p class="fs-6 text-muted mb-1">Ragione sociale</p>
              <p class="fs-6 desc">${partnerData.partnerAzienda?default("-----")}</p>
            </div>
            <div class="col-12 col-md-6 col-lg-8">
              <p class="fs-6 text-muted mb-1">Partita IVA</p>
              <p class="fs-6 desc">${partnerData.partnerPiva?default("-----")}</p>
            </div>
            <div class="col-12 col-md-6 col-lg-4">
              <p class="fs-6 text-muted mb-1">Indirizzo</p>
              <p class="fs-6 desc">${partnerData.partnerNazione?default("-----")}</p>
            </div>
            <div class="col-12 col-md-6 col-lg-4">
              <p class="fs-6 text-muted mb-1">Email</p>
              <p class="fs-6 desc">${partnerData.partnerContactEmail?default("-----")}</p>
            </div>
            <div class="col-12 col-md-6 col-lg-4">
              <p class="fs-6 text-muted mb-1">Telefono</p>
              <p class="fs-6 desc">${partnerData.partnerTelephone?default("-----")}</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Categorie Servizi -->
    <div class="accordion-item rounded-3 shadow-sm">
      <h2 class="accordion-header">
        <button
          class="accordion-button collapsed fs-6 fw-bold"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#productCategories"
          aria-expanded="false"
          aria-controls="productCategories"
        >
          Categorie Servizi
        </button>
      </h2>
      <div
        id="productCategories"
        class="accordion-collapse collapse"
        data-bs-parent="#productsAccordion"
      >
        <div class="accordion-body px-4 py-4">
          <div class="category_services row g-4">
            <div class="category_service col-12 col-md-6 col-lg-4 d-flex gap-3">
              <p class="category_service_name">Test Before Invest</p>
              <img src="static-assets/assets/questionmark.png" alt=""
                data-bs-toggle="tooltip" data-bs-placement="bottom"
                title="Servizi che permettono alle aziende di esplorare e testare nuove tecnologie e soluzioni prima di effettuare investimenti, attraverso dimostrazioni pratiche, studi di fattibilità, proof-of-concept, test e validazione di soluzioni.">
            </div>
            <div class="category_service col-12 col-md-6 col-lg-4 d-flex gap-3">
              <p class="category_service_name">Access to Finance</p>
              <img src="static-assets/assets/questionmark.png" alt=""
                data-bs-toggle="tooltip" data-bs-placement="bottom"
                title="Servizi di consulenza finalizzati a facilitare l'accesso a finanziamenti pubblici e privati, tra cui la finanza agevolata, la progettazione di crowdfunding, l'accesso al credito, le misure fiscali e la consulenza in corporate finance.">
            </div>
            <div class="category_service col-12 col-md-6 col-lg-4 d-flex gap-3">
              <p class="category_service_name">Consulenza</p>
              <img src="static-assets/assets/questionmark.png" alt=""
                data-bs-toggle="tooltip" data-bs-placement="bottom"
                title="Servizi progettati per supportare le aziende nel loro percorso di innovazione e crescita, fornendo supporto strategico e operativo su diverse aree come l'orientamento tecnologico, la gestione del cambiamento, l'innovazione sociale e la consulenza ICT e manageriale.">
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Documentazione -->
    <div class="accordion-item rounded-3 shadow-sm">
      <h2 class="accordion-header">
        <button
          class="accordion-button collapsed fs-6 fw-bold"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#productTwo"
          aria-expanded="false"
          aria-controls="productTwo"
        >
          Documentazione
        </button>
      </h2>
      <div
        id="productTwo"
        class="accordion-collapse collapse"
        data-bs-parent="#productsAccordion"
      >
        <div class="accordion-body row g-4 px-4 py-3">
          <#list partnerData.partnerLandingImagesAssetsUrlList?default([]) as mediaUrl>
            <div class="attachment col-12 col-md-4">
              <p class="name_attachment d-flex justify-content-center justify-content-md-start">
                Allegato-${mediaUrl_index + 1}
              </p>
              <div class="buttons d-flex gap-3 justify-content-center justify-content-md-start">
                <a href="${mediaUrl}?download=true" download>
                  <i class="fs-5 bi bi-download"></i>
                </a>
                <a href="${mediaUrl}" target="_blank" rel="noopener noreferrer">
                  <i class="fs-5 bi bi-eye"></i>
                </a>
              </div>
            </div>
          </#list>
          <#if partnerData.partnerLandingImagesAssetsUrlList?default([])?size == 0>
            <div class="attachment col-12 col-md-4">
                Nessun allegato presente.
            </div>
          </#if>
        </div>
      </div>
    </div>

  </div>
</div>

  
<#if partnerData.partnerLandingImagesAssetsUrlList?default([])?size != 0>
    <div class="bg-primary pb-5">
      <div class="layout_padding mx-auto col-11 col-md-9 px-0 other_news_section">
        <h2 class="title_section text-white">Galleria</h2>
        <div
          class="other_news_list d-flex gap-4 overflow-auto pb-4"
          style="height: 510px"
        >

          
          <#list partnerData.partnerLandingImagesAssetsUrlList?default([]) as mediaUrl>
              <div class="card text-white border-0 other_news_item col-12 col-md-9 col-lg-8 col-xl-6 p-0 overflow-hidden">
                <img
                  src="${mediaUrl}"
                  class="card-img w-100 object-fit-cover"
                  alt="Allegato-${mediaUrl_index + 1}"
                />
              </div>
          </#list>
          
        </div>
      </div>
    </div>
</#if>




        
       
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>
