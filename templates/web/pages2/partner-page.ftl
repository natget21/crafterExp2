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
    <link rel="stylesheet" href="/static-assets/css/partner.css" />
    
    <@crafter.head/>
</head>

<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">

    

    <div class="content pb-5">
      <div
        class="banner_section banner_partners layout_padding d-flex align-items-center"
      >
        <div class="container">
          <h1 class="best_taital text-center text-white p-0">Partner</h1>
        </div>
      </div>
      <div
        class="explanation layout_padding mx-auto d-flex flex-column flex-md-row justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6">Partner di progetto</h2>
        <div class="col-md-6">
          <p class="" for="">
            Il progetto è promosso da Synthesis3 S.r.l., insieme ai partner
            Amicucci Formazione S.r.l. e Sinergia EPC S.r.l. Ognuno di loro
            porta competenze chiave specifiche e complementari al progetto,
            permettendo di offrire una gamma diversificata e altamente
            qualificata di soluzioni per le imprese, la pubblica amministrazione
            e il terzo settore.
          </p>
        </div>
      </div>
      <div
        class="layout_padding partners_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <div class="row row-gap-5">
          <#if partnerList?? && (partnerList?size > 0) && partnerCompanyLogoUrl?? && !partner.partnerCompanyLogoUrl?lower_case?contains("script")>
          <#list partnerList as partner>
          <div class="partner col-12 d-flex flex-column gap-3">
            <div
              class="d-flex flex-column flex-md-row justify-content-between gap-5 align-items-center"
            >
                  <div class="partner_logo_container w-100">
                    <#if partner.partnerCompanyLogoUrl?? && !partner.partnerCompanyLogoUrl?lower_case?contains("script")>
                      <img
                        class="partner_logo"
                        src="${partner.partnerCompanyLogoUrl}"
                        alt=""
                      />
                    </#if>
                  </div>
                  <div class="col-12 col-md-8">
                    <h3 class="partner_title">${partner.partnerAzienda}</h3>
                    
                    <#assign cleanedIntro = partner.partnerLandingIntroduction
                      ?replace("(?i)<(?!/?p\\b)[^>]*>", "<p>", "r")
                      ?replace("(?i)</p>\\s*<p>", "</p><br><p>", "r")
                    >
                    ${cleanedIntro}


                
                    <div
                      class="d-flex flex-grow-1 justify-content-end align-items-end mt-3"
                    >
                      <button
                        class="btn btn-secondary read_more rounded-pill"
                        onclick="window.location.href='/partner-detail?id=67dd8279c70ba0680bdc849d'"
                      >
                        Scopri di più
                      </button>
                    </div>
                  </div>
            </div>
          </div>
          </#list>
          </#if>
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
