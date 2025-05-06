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
    <link rel="stylesheet" href="/static-assets/css/news-detail.css" />
    
    <@crafter.head/>
</head>

<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">
    

      <div
        class="banner_section banner_services layout_padding d-flex align-items-center"
      >
        <img class="banner_img" src="static-assets/assets/news.png">
        <div class="container">
          <h1 class="best_taital text-center p-0 dark">News</h1>
        </div>
      </div>
    <div class="content layout_padding">
      <div class="news_section mx-auto col-11 col-md-9 px-0">
        <div class="article-date mb-2 text-muted">Novembre 29, 2024</div>
        <h1 class="title-hero title_section mb-4">
          EDIH Network Summit 2024: Seconda edizione dell’EDIH Network Summit
        </h1>
        <div class="mb-4 d-flex justify-content-center">
          <img
            src="https://www.edih4marche.eu/wp-content/uploads/2024/11/Immagine-2024-12-04-133444.png"
            class="article_img w-100"
            alt="Image News"
          />
        </div>

        <p>
          <strong class="subtitle">
            EDIH Network Summit 2024 | 26 e 27 novembre The EGG, Bruxelles
          </strong>
        </p>

        <p>
          EDIH4Marche, insieme agli altri 12 EDIH italiani, ha partecipato alla
          seconda edizione dell’EDIH Network Summit, tenutasi a Bruxelles il 26
          e 27 novembre, che ha riunito i principali stakeholder della rete
          degli European Digital Innovation Hub (EDIH), inclusi rappresentanti
          di vari gruppi di lavoro tematici, autorità nazionali e gruppi di
          esperti.
        </p>

        <p>
          L’evento ha fornito informazioni di prim’ordine su argomenti chiave
          come le sfide dell’intelligenza artificiale e ha facilitato momenti di
          networking tra i partecipanti provenienti da tutta Europa.
        </p>
      </div>
      <div class="layout_padding">
        <div class="bg-primary pb-5">
          <div
            class="layout_padding mx-auto col-11 col-md-9 px-0 other_news_section"
          >
            <h2 class="title_section text-white">Altre notizie</h2>
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
      </div>
    </div>




    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

    
        <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
