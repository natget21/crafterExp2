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
    <link rel="stylesheet" href="/static-assets/css/tecnologie.css" />
    
    <@crafter.head/>
</head>

<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">
    

<div class="content pb-5">
      <div class="banner_section banner_tecnologie layout_padding">
        <div class="container">
          <h1 class="best_taital text-center text-white">Tecnologie</h1>
          <div class="box_main"></div>
          <p
            class="there_text d-flex justify-content-center text-white pt-0 pt-md-5"
          >
            L’ecosistema digitale per costruire valore attraverso l’innovazione
            condivisa
          </p>
        </div>
      </div>
      <div
        class="explanation layout_padding mx-auto d-flex flex-column flex-md-row justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6">
          Tecnologie e soluzioni digitali
        </h2>
        <div class="col-md-6">
          <p class="" for="">
            Il catalogo dell'offerta della piattaforma comprende una vasta gamma
            di prodotti e servizi digitali, progettati per rispondere alle
            esigenze di imprese, pubblica amministrazione, enti del terzo
            settore, liberi professionisti e startup. L'offerta si articola in
            soluzioni tecnologiche avanzate e consulenze specializzate, pensate
            per favorire l'adozione di tecnologie innovative, il rafforzamento
            delle competenze digitali, l'accesso a finanziamenti e la creazione
            di reti collaborative.
          </p>
          <p>
            La piattaforma si propone come punto di riferimento per il supporto
            alla trasformazione digitale e allo sviluppo di nuove opportunità di
            business e innovazione attraverso l’erogazione di prodotti e servizi
            digitali:
          </p>
        </div>
      </div>
      <div class="bg-primary pb-5 mt-3 text-black">
        <div class="layout_padding mx-auto col-11 col-md-9 px-0 tech_section">
          <h2 class="title_section text-black">Le tecnologie che offriamo</h2>
          <p>
            La digital Roadmap si attua attraverso l’ introduzione delle
            cosiddette “Key Enabling Technologies”, le tecnologie che abilitano
            la trasformazione digitale. Gli ambiti in cui opera EDIH4Marche con
            i suoi partner sono quelli a maggiore impatto sulla crescita dell’
            impresa.
          </p>
          <div class="row pl-3">
            <div
              class="layout_padding tech px-0 col-12 col-md-3 d-flex align-items-center align-items-md-start flex-column gap-3"
            >
              <img
                src="https://www.edih4marche.eu/wp-content/uploads/2024/07/ico-robotica.svg"
                alt=""
              />

              <p
                class="tech_text d-flex justify-content-center justify-content-md-start"
              >
                Imprese
              </p>
            </div>
            <div
              class="layout_padding tech px-0 col-12 col-md-3 d-flex align-items-center align-items-md-start flex-column gap-3"
            >
              <img
                src="https://www.edih4marche.eu/wp-content/uploads/2024/07/ico-robotica.svg"
                alt=""
              />
              <p
                class="tech_text d-flex justify-content-center justify-content-md-start"
              >
                Pubblica Amministrazione
              </p>
            </div>
            <div
              class="layout_padding tech px-0 col-12 col-md-3 d-flex align-items-center align-items-md-start flex-column gap-3"
            >
              <img
                src="https://www.edih4marche.eu/wp-content/uploads/2024/07/ico-robotica.svg"
                alt=""
              />
              <p
                class="tech_text d-flex justify-content-center justify-content-md-start"
              >
                Enti del Terzo Settore
              </p>
            </div>
            <div
              class="layout_padding tech px-0 col-12 col-md-3 d-flex align-items-center align-items-md-start flex-column gap-3"
            >
              <img
                src="https://www.edih4marche.eu/wp-content/uploads/2024/07/ico-robotica.svg"
                alt=""
              />
              <p
                class="tech_text d-flex justify-content-center justify-content-md-start"
              >
                Liberi Professionisti
              </p>
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
