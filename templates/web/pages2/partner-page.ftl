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
        
        <p>${partnerList}</p>
        
          <div class="partner col-12 d-flex flex-column gap-3">
            <div
              class="d-flex flex-column flex-md-row justify-content-between gap-5 align-items-center"
            >
              <div class="partner_logo_container w-100">
                <img
                  class="partner_logo"
                  src="static-assets/assets/synthesis-logo.jpeg"
                  alt=""
                />
              </div>
              <div class="col-12 col-md-8">
                <h3 class="partner_title">Synthesis3 S.r.l.</h3>
                <p class="partner_description m-0">
                  Fondata nel 2001, Synthesis3 è una società specializzata nella
                  consulenza informatica e gestionale, con una forte esperienza
                  nel facility management e nell’innovation management. Attiva
                  dal 2022 nelle Marche, il team di Synthesis3 supporta le
                  imprese, la pubblica amministrazione e il terzo settore nella
                  trasformazione digitale, con particolare focus su Project
                  Management, Innovation Management, e Stakeholders Engagement.
                  Il partner è coinvolto nella progettazione e sviluppo di
                  soluzioni digitali, come la Digital Ecosystem Platform, e
                  offre servizi di consulenza per la trasformazione digitale e
                  la gestione dell'innovazione.
                </p>
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
          <div class="partner col-12 d-flex flex-column gap-3">
            <div
              class="d-flex flex-column flex-md-row justify-content-between gap-5 align-items-center"
            >
              <div class="partner_logo_container w-100">
                <img
                  class="partner_logo"
                  src="static-assets/assets/sinergia-logo.png"
                  alt=""
                />
              </div>
              <div class="col-12 col-md-8">
                <h3 class="partner_title">Sinergia EPC S.r.l.</h3>
                <p class="partner_description m-0">
                  Nata nel 2021 come spin-off di Sinergia Consulenze, Sinergia
                  EPC si specializza in Lean Technology e Sistemi di Controllo
                  Interni, supportando le imprese e le pubbliche amministrazioni
                  nel miglioramento dei processi e nella digitalizzazione. Il
                  partner ha un forte focus sul settore manifatturiero delle
                  Marche, in particolare nell’ambito di Industria 4.0 e
                  soluzioni basate su machine learning, deep learning, computer
                  vision e intelligenza artificiale. Sinergia EPC collabora con
                  il gruppo di ricerca VRAI per lo sviluppo di soluzioni
                  innovative, inclusi strumenti per la qualità estetica basati
                  su AI e realtà aumentata.
                </p>
                <div
                  class="d-flex flex-grow-1 justify-content-end align-items-end mt-3"
                >
                  <button class="btn btn-secondary read_more rounded-pill" onclick="window.location.href='/partner-detail?id=67fce234f647a63da899d027'">
                    Scopri di più
                  </button>
                </div>
              </div>
            </div>
          </div>
          <div class="partner col-12 d-flex flex-column gap-3">
            <div
              class="d-flex flex-column flex-md-row justify-content-between gap-5 align-items-center"
            >
              <div class="partner_logo_container w-100">
                <img class="partner_logo" src="static-assets/assets/skilla-logo.png" alt="" />
              </div>
              <div class="col-12 col-md-8">
                <h3 class="partner_title">
                  Amicucci Formazione S.r.l. (SKILLA)
                </h3>
                <p class="partner_description m-0">
                  Specializzata nel settore della formazione digitale, SKILLA -
                  Amicucci Formazione S.R.L. offre soluzioni di e-learning, con
                  un focus su microlearning e contenuti fruibili su più
                  dispositivi. Con oltre 90 partner internazionali, l'azienda ha
                  sviluppato una solida expertise nella formazione aziendale,
                  specializzandosi in competenze digitali e leadership. Il
                  partner è all'avanguardia nell'uso di tecnologie immersive,
                  come realtà virtuale e aumentata, per creare esperienze di
                  apprendimento coinvolgenti e pratiche, con un forte impatto
                  nell’educazione e nel miglioramento delle performance
                  lavorative
                </p>
                <div
                  class="d-flex flex-grow-1 justify-content-end align-items-end mt-3"
                >
                  <button class="btn btn-secondary read_more rounded-pill">
                    Scopri di più
                  </button>
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
