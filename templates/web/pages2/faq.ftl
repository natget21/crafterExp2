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
    <link rel="stylesheet" href="/static-assets/css/faq.css" />
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
    
    
    <div
      class="banner_section banner_faq layout_padding d-flex align-items-center"
    >
      <img class="banner_img" src="static-assets/assets/faq.png">
      <div class="container">
        <h1 class="best_taital text-center text-white p-0 dark">FAQ</h1>
      </div>
    </div>
    <div class="content pb-5 layout_padding col-11 col-md-9 mx-auto">
      <div class="d-flex flex-column flex-md-row">
        <div class="">
          <h2 class="title_section">
            Hai dei dubbi? Consulta le domande frequenti
          </h2>
        </div>
      </div>
      <form class="d-flex mt-5" role="search">
        <input
          id="faqSearch"
          class="form-control me-2 rounded"
          type="search"
          placeholder="Cerca tra le domande..."
          aria-label="Search"
        />
        <button class="btn btn-primary rounded" type="button">
          <i class="bi bi-search"></i>
        </button>
      </form>

      <div class="">
          <strong> ${contentModel.registrazionefaqs_o} </strong>
        <#if contentModel.registrazionefaqs_o?? && contentModel.registrazionefaqs_o?has_content>
            <h2 class="title_section faq_title layout_padding">Registrazione al portale</h2>
            <#list contentModel.registrazionefaqs_o.item  as item>
                <#if item.id_s?? && item.id_s?has_content>
                    <div class="accordion mb-3" id="registration-${item.id_s}">
                      <div class="accordion-item">
                        <h2 class="accordion-header">
                          <button
                            class="accordion-button faq-question collapsed"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#registration-button-${item.id_s}"
                            aria-expanded="false"
                            aria-controls="registration-button-${item.id_s}"
                          >
                            <#if item.titolo_t?? && item.titolo_t?has_content>
                                ${item.titolo_t}
                            </#if>
                          </button>
                        </h2>
                        <div
                          id="registration-button-${item.id_s}"
                          class="accordion-collapse collapse"
                          data-bs-parent="#registration-${item.id_s}"
                        >
                          <div class="accordion-body row row-gap-5">
                            <div class="col-12 info">
                              <p class="fs-5 desc">
                                <#if item.risposta_t?? && item.risposta_t?has_content>
                                    ${item.risposta_t}
                                </#if>
                              </p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                </#if>
            </#list>
        </#if>
        <#if contentModel.marketplacefaqs_o?? && contentModel.marketplacefaqs_o?has_content>
            <h2 class="title_section faq_title layout_padding">Marketplace</h2>
            <#list contentModel.marketplacefaqs_o.item  as item>
                <#if item.id_s?? && item.id_s?has_content>
                    <div class="accordion mb-3" id="marketplace-${item.id_s}">
                      <div class="accordion-item">
                        <h2 class="accordion-header">
                          <button
                            class="accordion-button faq-question collapsed"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#marketplace-button-${item.id_s}"
                            aria-expanded="false"
                            aria-controls="marketplace-button-${item.id_s}"
                          >
                            <#if item.titolo_t?? && item.titolo_t?has_content>
                                ${item.titolo_t}
                            </#if>
                          </button>
                        </h2>
                        <div
                          id="marketplace-button-${item.id_s}"
                          class="accordion-collapse collapse"
                          data-bs-parent="#marketplace-${item.id_s}"
                        >
                          <div class="accordion-body row row-gap-5">
                            <div class="col-12 info">
                              <p class="fs-5 desc">
                                <#if item.risposta_t?? && item.risposta_t?has_content>
                                    ${item.risposta_t}
                                </#if>
                              </p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                </#if>
            </#list>
        </#if>
        <#if contentModel.ricercaservizifaqs_o?? && contentModel.ricercaservizifaqs_o?has_content>
            <h2 class="title_section faq_title layout_padding">Ricerca dei Servizi</h2>
            <#list contentModel.ricercaservizifaqs_o.item  as item>
                <#if item.id_s?? && item.id_s?has_content>
                    <div class="accordion mb-3" id="service-${item.id_s}">
                      <div class="accordion-item">
                        <h2 class="accordion-header">
                          <button
                            class="accordion-button faq-question collapsed"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#service-button-${item.id_s}"
                            aria-expanded="false"
                            aria-controls="service-button-${item.id_s}"
                          >
                            <#if item.titolo_t?? && item.titolo_t?has_content>
                                ${item.titolo_t}
                            </#if>
                          </button>
                        </h2>
                        <div
                          id="service-button-${item.id_s}"
                          class="accordion-collapse collapse"
                          data-bs-parent="#service-${item.id_s}"
                        >
                          <div class="accordion-body row row-gap-5">
                            <div class="col-12 info">
                              <p class="fs-5 desc">
                                <#if item.risposta_t?? && item.risposta_t?has_content>
                                    ${item.risposta_t}
                                </#if>
                              </p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                </#if>
            </#list>
        </#if>
        <#if contentModel.accreditamentocatalogofaqs_o?? && contentModel.accreditamentocatalogofaqs_o?has_content>
            <h2 class="title_section faq_title layout_padding">Accreditamento al Catalogo dei Servizi</h2>
            <#list contentModel.accreditamentocatalogofaqs_o.item  as item>
                <#if item.id_s?? && item.id_s?has_content>
                    <div class="accordion mb-3" id="accreditamento-${item.id_s}">
                      <div class="accordion-item">
                        <h2 class="accordion-header">
                          <button
                            class="accordion-button faq-question collapsed"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#accreditamento-button-${item.id_s}"
                            aria-expanded="false"
                            aria-controls="accreditamento-button-${item.id_s}"
                          >
                            <#if item.titolo_t?? && item.titolo_t?has_content>
                                ${item.titolo_t}
                            </#if>
                          </button>
                        </h2>
                        <div
                          id="accreditamento-button-${item.id_s}"
                          class="accordion-collapse collapse"
                          data-bs-parent="#accreditamento-${item.id_s}"
                        >
                          <div class="accordion-body row row-gap-5">
                            <div class="col-12 info">
                              <p class="fs-5 desc">
                                <#if item.risposta_t?? && item.risposta_t?has_content>
                                    ${item.risposta_t}
                                </#if>
                              </p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                </#if>
            </#list>
        </#if>
    </div>
    </div>

    <script>
      document
        .getElementById("faqSearch")
        .addEventListener("input", function () {
          const searchTerm = this.value.toLowerCase();
          const questions = document.querySelectorAll(".faq-question");

          questions.forEach((questionBtn) => {
            const questionText = questionBtn.textContent.toLowerCase();
            const accordionItem = questionBtn.closest(".accordion-item");
            if (questionText.includes(searchTerm)) {
              accordionItem.style.display = "";
            } else {
              accordionItem.style.display = "none";
            }
          });
        });
    </script>


    
        <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

    
        <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
