<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">

<#import "/templates/system/common/crafter.ftl" as crafter />
<head>
    <meta charset="utf-8">
    <!--<title>${contentModel.title_t}</title> -->
    <title>Ideale</title>
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
    <link rel="stylesheet" href="/static-assets/css/events.css" />
    
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
          <h2 class="title_section">Domande frequenti</h2>
          <p class="explanation pt-4" for="">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam,
            quos.Lorem ipsum dolor sit amet consectetur adipisicing elit.
            Quisquam, quos.Lorem ipsum dolor sit amet consectetur adipisicing
            elit. Quisquam, quos.Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Quisquam, quos.Lorem ipsum dolor sit amet
            consectetur adipisicing elit. Quisquam, quos.Lorem ipsum dolor sit
            amet consectetur adipisicing elit. Quisquam, quos.Lorem ipsum dolor
            sit amet consectetur adipisicing elit. Quisquam, quos.
          </p>
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
                Di che colore é il cavallo bianco di Napoleone?
              </button>
            </h2>
            <div
              id="productOne"
              class="accordion-collapse collapse"
              data-bs-parent="#productsAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">Bianco perche' Napoleone era francese</p>
                </div>
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
                Quanti sono i giorni di un anno?
              </button>
            </h2>
            <div
              id="productTwo"
              class="accordion-collapse collapse"
              data-bs-parent="#productsAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    365 perche' Napoleone era francese e Napoleone voleva
                    imporre il suo calendario
                  </p>
                </div>
              </div>
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
