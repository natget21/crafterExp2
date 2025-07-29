<#ftl output_format="HTML">
<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<head>
    <meta charset="utf-8">
    <title>Partner Detail</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Favicon -->
    <link href="/static-assets/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    
    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.4/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>



    <!-- Libraries Stylesheet -->
    <link href="/static-assets/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/static-assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/static-assets/css/style.css" rel="stylesheet">
    
    <link rel="stylesheet" href="/static-assets/css/general-style.css" />
    <link rel="stylesheet" href="/static-assets/css/partner-detail.css" />
    
    <@crafter.head/>
</head>

<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">



  <div
    class="banner_section banner_partners layout_padding d-flex align-items-center"
  >
    <img class="banner_img" src="static-assets/assets/partner.png">
    <div class="container">
      <h1 class="best_taital text-center dark p-0">Partner</h1>
    </div>
  </div>
    <div class="content pb-5 layout_padding col-11 col-md-9 mx-auto">
      <div class="d-flex flex-column flex-md-row">
        <div class="col-12 col-md-7">
          <h3 class="title_section">${partnerData.partnerAzienda}</h3>
          <div class="text-justified fs-5 fw-normal" for="">
            ${partnerData.partnerLandingIntroduction?no_esc}
            ${partnerData.partnerLandingContent?no_esc}
          </div>
        </div>
        <div class="col-12 col-md-5">
          <img
            src="${partnerData.partnerCompanyLogoUrl?no_esc}"
            alt="${partnerData.partnerAzienda?no_esc}"
            class="logo"
          />
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
              <p class="fs-6 desc">${partnerData.partnerAzienda}</p>
            </div>
            <div class="col-12 col-md-6 col-lg-8">
              <p class="fs-6 text-muted mb-1">Partita IVA</p>
              <p class="fs-6 desc">${partnerData.partnerPiva}</p>
            </div>
            <div class="col-12 col-md-6 col-lg-4">
              <p class="fs-6 text-muted mb-1">Indirizzo</p>
              <p class="fs-6 desc">${partnerData.partnerNazione}</p>
            </div>
            <div class="col-12 col-md-6 col-lg-4">
              <p class="fs-6 text-muted mb-1">Email</p>
              <p class="fs-6 desc">${partnerData.partnerContactEmail}</p>
            </div>
            <div class="col-12 col-md-6 col-lg-4">
              <p class="fs-6 text-muted mb-1">Telefono</p>
              <p class="fs-6 desc">${partnerData.partnerTelephone}</p>
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
          <#list partnerData.partnerLandingImagesAssetsUrlList as mediaUrl>
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
        </div>
      </div>
    </div>

  </div>
</div>

  
<!-- GALLERIA
    <div class="bg-primary pb-5">
      <div
        class="layout_padding mx-auto col-11 col-md-9 px-0 other_news_section"
      >
        <h2 class="title_section text-white">Galleria</h2>
        <div
          class="other_news_list d-flex gap-4 overflow-auto pb-4"
          style="height: 510px"
        >
          <div
            class="card text-white border-0 other_news_item col-12 col-md-9 col-lg-8 col-xl-6 p-0 overflow-hidden"
          >
            <img
              src="https://www.ip4fvg.it/wp-content/uploads/2024/11/Deep-tech-sostenibile-680x459.png"
              class="card-img w-100 object-fit-cover"
              alt="Deep Tech"
            />
            <h5 class="card-title" style="position: relative; top: 10px">
              Deep tech: secondo bando del programma D2XCEL Scaling
            </h5>
          </div>
          <div
            class="card text-white border-0 other_news_item col-12 col-md-9 col-lg-8 col-xl-6 p-0 overflow-hidden"
          >
            <img
              src="https://www.ip4fvg.it/wp-content/uploads/2024/11/Deep-tech-sostenibile-680x459.png"
              class="card-img w-100 object-fit-cover"
              alt="Deep Tech"
            />
            <h5 class="card-title" style="position: relative; top: 10px">
              Deep tech: secondo bando del programma D2XCEL Scaling
            </h5>
          </div>
          <div
            class="card text-white border-0 other_news_item col-12 col-md-9 col-lg-8 col-xl-6 p-0 overflow-hidden"
          >
            <img
              src="https://www.ip4fvg.it/wp-content/uploads/2024/11/Deep-tech-sostenibile-680x459.png"
              class="card-img w-100 object-fit-cover"
              alt="Deep Tech"
            />
            <h5 class="card-title" style="position: relative; top: 10px">
              Deep tech: secondo bando del programma D2XCEL Scaling
            </h5>
          </div>
        </div>
      </div>
    </div>
-->
    


    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">
    <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">

    <script>
      document.addEventListener('DOMContentLoaded', function () {
        const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
        tooltipTriggerList.forEach(function (tooltipTriggerEl) {
          new bootstrap.Tooltip(tooltipTriggerEl, {
              placement: 'bottom',
              fallbackPlacements: [] // Nessun fallback
          });
        tooltipTriggerEl.addEventListener('click', function () {
            console.log('ELEMENTI CARICATI:', tooltipTriggerEl);
            debugger
        });

        });
      });
    </script>


    <@crafter.body_bottom/>
</body>
</html>
