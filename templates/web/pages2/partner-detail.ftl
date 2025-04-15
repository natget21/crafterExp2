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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/static-assets/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/static-assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/static-assets/css/style.css" rel="stylesheet">
    
    <link rel="stylesheet" href="/static-assets/css/general-style.css" />
    <link rel="stylesheet" href="/static-assets/css/partner-detail.css" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.4/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YUe2LzesAfftltw+PEaao2tjU/QATaW/rOitAq67e0CT0Zi2VVRL0oC4+gAaeBKu"
      crossorigin="anonymous"
    ></script>
    
    <@crafter.head/>
</head>

<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">



    <div class="content pb-5 layout_padding col-11 col-md-9 mx-auto">
      <div class="d-flex flex-column flex-md-row">
        <div class="col-12 col-md-7">
          <h2 class="title_section">${partnerData.partnerAzienda}</h2>
          <div class="explanation pt-4" for="">
            ${partnerData.partnerLandingIntroduction?no_esc}
            ${partnerData.partnerLandingContent?no_esc}
          </div>
        </div>
        <div class="col-12 col-md-5">
          <img
            src="${partnerData.partnerCompanyLogoUrl}"
            alt="${partnerData.partnerAzienda}"
            class="logo"
          />
        </div>
      </div>
      <div class="layout_padding">
        <div class="accordion" id="productsAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
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
              <div class="accordion-body row row-gap-5">
                <div class="col-12 col-lg-3 info">
                  <p class="text-primary">Ragione sociale</p>
                  <p class="fs-5 desc">${partnerData.partnerAzienda}</p>
                </div>
                <div class="col-12 col-lg-9 info">
                  <p class="text-primary">Partita IVA</p>
                  <p class="fs-5 desc">${partnerData.partnerPiva}</p>
                </div>
                <div class="col-12 col-lg-3 info">
                  <p class="text-primary">Indirizzo</p>
                  <p class="fs-5 desc">${partnerData.partnerTelephone}, ${partnerData.partnerNazione}</p>
                </div>
                <div class="col-12 col-lg-3 info">
                  <p class="text-primary">Email</p>
                  <p class="fs-5 desc">${partnerData.partnerContactEmail}</p>
                </div>
                <div class="col-12 col-lg-3 info">
                  <p class="text-primary">Telefono</p>
                  <p class="fs-5 desc">${partnerData.partnerTelephone}</p>
                </div>
                <div class="col-12 info">
                  <p class="text-primary">Categoria servizi</p>
                  <p class="fs-5 desc">Test Before Invest</p>
                  <p class="fs-5 desc">Access to Finance</p>
                  <p class="fs-5 desc">Consulenza</p>
                </div>
                <div class="col-12 col-md-3"></div>
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
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
              <div class="accordion-body row row-gap-5">
                <#list partnerData.partnerLandingImagesAssetsUrlList as mediaUrl>
                  <div class="attachment col-12 col-md-4">
                    <p
                      class="name_attachment d-flex justify-content-center justify-content-md-start"
                    >
                      Allegato-${mediaUrl_index + 1}
                    </p>
                    <div
                      class="buttons justify-content-center justify-content-md-start d-flex gap-3"
                    >
                      <a href="${mediaUrl}?download=true" download><i class="bi bi-download"></i></a>
                      <a href="${mediaUrl}" target="_blank" rel="noopener noreferrer">
                        <i class="bi bi-eye"></i>
                      </a>
                    </div>
                  </div>
                </#list>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="bg-primary pb-5">
      <div
        class="layout_padding mx-auto col-11 col-md-9 px-0 other_news_section"
      >
        <div class="other_news_list d-flex gap-4 overflow-auto pb-4">
          <div
            class="card text-white border-0 shadow other_news_item col-12 col-md-9 col-lg-8 col-xl-6 p-0 overflow-hidden"
          >
            <img
              src="https://www.ip4fvg.it/wp-content/uploads/2024/11/Deep-tech-sostenibile-680x459.png"
              class="card-img w-100 h-100 object-fit-cover"
              alt="Deep Tech"
            />
            <div
              class="card-img-overlay d-flex flex-column justify-content-between p-4"
            >
              <span class="date-badge px-3">4 Novembre 2024</span>
              <h5 class="card-title">
                Deep tech: secondo bando del programma D2XCEL Scaling
              </h5>
            </div>
          </div>
          <div
            class="card text-white border-0 shadow other_news_item col-12 col-md-9 col-lg-8 col-xl-6 p-0 overflow-hidden"
          >
            <img
              src="https://www.edih4marche.eu/wp-content/uploads/elementor/thumbs/Immagine-2025-02-08-152302-r17hobiwl861im24au3j3nhchyisva3oqu0wsdmges.png"
              class="card-img w-100 h-100 object-fit-cover"
              alt="Deep Tech"
            />
            <div
              class="card-img-overlay d-flex flex-column justify-content-between p-4"
            >
              <span class="date-badge px-3">4 Novembre 2024</span>
              <h5 class="card-title">
                Deep tech: secondo bando del programma D2XCEL Scaling
              </h5>
            </div>
          </div>
          <div
            class="card text-white border-0 shadow other_news_item col-12 col-md-9 col-lg-8 col-xl-6 p-0 overflow-hidden"
          >
            <img
              src="https://www.edih4marche.eu/wp-content/uploads/elementor/thumbs/56acbf54-73fa-431d-a856-c404044f0107-qzy1y0l8kj99grp7yenuewm293m94yk3movw4uxllg.jpeg"
              class="card-img w-100 h-100 object-fit-cover"
              alt="Deep Tech"
            />
            <div
              class="card-img-overlay d-flex flex-column justify-content-between p-4"
            >
              <span class="date-badge px-3">4 Novembre 2024</span>
              <h5 class="card-title">
                Deep tech: secondo bando del programma D2XCEL Scaling
              </h5>
            </div>
          </div>
        </div>
      </div>
    </div>
    


    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">
    <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
