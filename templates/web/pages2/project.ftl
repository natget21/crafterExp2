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
    <link rel="stylesheet" href="/static-assets/css/project.css" />
    
    <@crafter.head/>
</head>

<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">



    <div class="content pb-5">
      <div class="banner_section banner_project layout_padding">
        <img class="banner_img" src="static-assets/assets/progetto.png">
        <div class="container flex-column align-items-end">
          <h1 class="best_taital text-center dark p-0">
            <#if contentModel.titolobanner_t?? && contentModel.titolobanner_t?has_content>
                ${contentModel.titolobanner_t}
            </#if>
          </h1>
          <p
            class="there_text d-flex justify-content-end dark p-0 m-0"
          >
            <#if contentModel.sottotitolobanner_t?? && contentModel.sottotitolobanner_t?has_content>
                ${contentModel.sottotitolobanner_t}
            </#if>
          </p>
        </div>
      </div>
      <div
        class="mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <div class="marketing_section layout_padding mb-5">
          <h2 class="marketing_title title_section">
            <#if contentModel.marketingtitle_s_t?? && contentModel.marketingtitle_s_t?has_content>
                ${contentModel.marketingtitle_s_t}
            </#if>
          </h2>
          <p>
            <#if contentModel.paragrafomarketing_t?? && contentModel.paragrafomarketing_t?has_content>
                ${contentModel.paragrafomarketing_t}
            </#if>
          </p>
        </div>
        <div class="objectives_section">
          <h2 class="title_section sub_title mb-4">
            <#if contentModel.titoloobiettivi_s?? && contentModel.titoloobiettivi_s?has_content>
                ${contentModel.titoloobiettivi_s}
            </#if>
          </h2>
          <div class="objectives row row-gap-5">
            <#list contentModel.obiettivi_o.item  as item>
                <div class="d-flex flex-column col-12 col-md-6 col-lg-4">
                  <div class="obj d-flex gap-3">
                    <#if item.imagepath_s?? && item.imagepath_s?has_content>
                        <img class="obj_image" src="${item.imagepath_s}" alt="" />
                    </#if>
                    <#if item.titolo_s?? && item.titolo_s?has_content>
                        <p><strong>${item.titolo_s}</strong></p>
                    </#if>
                  </div>
                  <#if item.descrizione_t?? && item.descrizione_t?has_content>
                        <p class="desc">${item.descrizione_t}</p>
                  </#if>
                </div>
            </#list>
          </div>
        </div>
        <hr />
        <div class="unicita">
          <h2 class="title_section sub_title">
            <#if contentModel.titolounicita_s?? && contentModel.titolounicita_s?has_content>
                ${contentModel.titolounicita_s}
            </#if>
          </h2>
          <p>
            <#if contentModel.testounicita_t?? && contentModel.testounicita_t?has_content>
                ${contentModel.testounicita_t}
            </#if>
          </p>
          <ul>
            <#list contentModel.listaunicita_o.item  as item>
                <#if item.unicitaitem_t?? && item.unicitaitem_t?has_content>
                    <li><p>
                        ${item.unicitaitem_t}
                    </p></li>
                </#if>
            </#list>
          </ul>
        </div>
      </div>
      <div
        class="layout_padding services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <#if contentModel.titolosservizi_s?? && contentModel.titolosservizi_s?has_content>
            <h2 class="services_section_title title_section">${contentModel.titolosservizi_s}</h2>
        </#if>
        <#if contentModel.titolosservizi_s?? && contentModel.titolosservizi_s?has_content>
            <p class="services_section_description mb-0 mt-3">${contentModel.descrizioneservizi_t}</p>
        </#if>
        <div class="mt-5">
          <p class="title_section sub_title">Prodotti digitali</p>
          <div class="accordion" id="productsAccordion">
            <#list contentModel.prodottidigitali_o.item  as item>
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <#if item.databstarget_s?? && item.databstarget_s?has_content>
                        <button
                          class="accordion-button collapsed"
                          type="button"
                          data-bs-toggle="collapse"
                          data-bs-target="#${item.databstarget_s}"
                          aria-expanded="false"
                          aria-controls="${item.databstarget_s}"
                        >
                          <#if item.titolo_s?? && item.titolo_s?has_content>
                            ${item.titolo_s}
                          </#if>
                        </button>
                    </#if>
                  </h2>
                  <div
                    id="${item.databstarget_s}"
                    class="accordion-collapse collapse"
                    data-bs-parent="#productsAccordion"
                  >
                    <div class="accordion-body">
                      <#if item.descrizione_t?? && item.descrizione_t?has_content>
                        ${item.descrizione_t}
                      </#if>
                    </div>
                  </div>
                </div>
            </#list>
          </div>
        </div>
        <div class="mt-5">
          <p class="title_section sub_title">Servizi digitali</p>
          <div class="accordion" id="servicesAccordion">
            <#list contentModel.servizidigitali_o.item  as item>
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <#if item.databstarget_s?? && item.databstarget_s?has_content>
                        <button
                          class="accordion-button collapsed"
                          type="button"
                          data-bs-toggle="collapse"
                          data-bs-target="#${item.databstarget_s}"
                          aria-expanded="false"
                          aria-controls="${item.databstarget_s}"
                        >
                          <#if item.titolo_s?? && item.titolo_s?has_content>
                            ${item.titolo_s}
                          </#if>
                        </button>
                    </#if>
                  </h2>
                  <div
                    id="${item.databstarget_s}"
                    class="accordion-collapse collapse"
                    data-bs-parent="#servicesAccordion"
                  >
                    <div class="accordion-body">
                      <#if item.descrizione_t?? && item.descrizione_t?has_content>
                        ${item.descrizione_t}
                      </#if>
                    </div>
                  </div>
                </div>
            </#list>
          </div>
        </div>
      </div>
      <div
        class="layout_padding addressee_section mx-auto col-11 col-md-9 px-0"
      >
        <h2 class="title_section">Destinatari</h2>
        <div class="row pl-3">
          <#list contentModel.destinatari_o.item  as item>
              <#assign widthValue = item.style_s?if_exists?trim>
              <div
                class="layout_padding addressee px-0 col-12 col-md-3 d-flex justify-content-start flex-column gap-3"
              >
                <#if item.imagepath_s?? && item.imagepath_s?has_content && item.style_s?? && item.style_s?has_content>
                    <div class="imageContainer">
                      <img src="${item.imagepath_s}" alt="" style="width: ${item.style_s}"  />
                    </div>
                </#if>
                <p class="addressee_text d-flex justify-content-start">
                    <#if item.nomedestinatario_s?? && item.nomedestinatario_s?has_content>
                        <p class="addressee_text d-flex justify-content-start">
                          ${item.nomedestinatario_s}
                        </p>
                    </#if>
                </p>
              </div>
          </#list>
          <div
            class="layout_padding addressee px-0 col-12 col-md-3 d-flex justify-content-start flex-column gap-3"
          >
            <div class="imageContainer">
              <img src="/static-assets/assets/pa.png" alt="" style="width: 100px" />
            </div>
            <p class="addressee_text d-flex justify-content-start">
              Pubblica Amministrazione
            </p>
          </div>
          <div
            class="layout_padding addressee px-0 col-12 col-md-3 d-flex justify-content-start flex-column gap-3"
          >
            <div class="imageContainer">
              <img src="/static-assets/assets/terzo-settore.png" alt="" style="width: 90px" />
            </div>
            <p class="addressee_text d-flex justify-content-start">
              Enti del Terzo Settore
            </p>
          </div>
          <div
            class="layout_padding addressee px-0 col-12 col-md-3 d-flex justify-content-start flex-column gap-3"
          >
            <div class="imageContainer">
              <img src="/static-assets/assets/freelance.png" alt="" style="width: 80px" />
            </div>
            <p class="addressee_text d-flex justify-content-start">
              Liberi Professionisti
            </p>
          </div>
        </div>
      </div>
      <div class="layout_padding targets_section mx-auto col-11 col-md-9 px-0">
        <h2 class="targets_section_title title_section">Settori target</h2>
        <div class="targets row layout_padding pl-3 gap-3">
          <div
            class="target px-0 col-12 col-md-2 d-flex justify-content-start flex-column gap-3"
          >
            <div class="imageContainer">
              <img src="/static-assets/assets/cultura.png" alt="" style="width: 90px;" />
            </div>
            <p>Cultura</p>
          </div>
          <div
            class="target px-0 col-12 col-md-2 d-flex justify-content-start flex-column gap-3"
          >
            <div class="imageContainer">
              <img src="/static-assets/assets/turismo.png" alt="" />
            </div>
            <p>Turismo</p>
          </div>
          <div
            class="target px-0 col-12 col-md-2 d-flex justify-content-start flex-column gap-3"
          >
            <div class="imageContainer">
              <img src="/static-assets/assets/sociale.png" alt="" />
            </div>
            <p>Sociale</p>
          </div>
        </div>
      </div>
    </div>





    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

    
        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-YUe2LzesAfftltw+PEaao2tjU/QATaW/rOitAq67e0CT0Zi2VVRL0oC4+gAaeBKu" crossorigin="anonymous"></script>
        <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
