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
      <div
        class="banner_section banner_services layout_padding d-flex align-items-center"
      >
        <div class="container">
          <h1 class="best_taital text-center text-white p-0">
            Prodotti e Servizi
          </h1>
        </div>
      </div>
      <div
        class="explanation layout_padding mx-auto d-flex flex-column flex-md-row justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6">Cosa offriamo</h2>
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
      <div
        class="services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <h5 class="service_type layout_padding">Prodotti digitali:</h5>
        <div
          class="service mt-5 d-flex justify-content-between align-items-center"
        >
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">E-services</h3>
            <p class="text-center">
              Si tratta di microservizi avanzati, facilmente accessibili tramite
              interfacce utente complete e progettati per rispondere alle
              esigenze specifiche del cliente finale. Questi servizi sono
              pensati per essere utilizzati immediatamente, senza necessità di
              configurazioni complesse, e possono essere integrati facilmente
              nei processi aziendali per ottimizzare la gestione e le
              operazioni.
            </p>
          </div>
          <img src="assets/assessment-1.jpg" alt="" />
        </div>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">API</h3>
            <p class="text-center">
              Le API (Application Programming Interface) senza interfaccia
              grafica sono soluzioni pensate per le aziende che necessitano di
              integrare sistemi esterni o personalizzati. Queste API permettono
              una comunicazione diretta tra applicazioni diverse, senza dover
              gestire una complessa interfaccia utente, facilitando
              l'automazione e l'efficienza operativa.
            </p>
          </div>
          <img src="assets/test-before-invest-1.jpg" alt="" />
        </div>
        <h5 class="service_type layout_padding">Servizi Digitali:</h5>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">Test Before Invest</h3>
            <p class="text-center">
              Questa categoria permette alle aziende di esplorare soluzioni e
              tecnologie prima di fare investimenti significativi. Consente di
              validare idee e concetti tecnologici attraverso attività pratiche
              e dimostrative che riducono i rischi e migliorano la decisione
              sugli investimenti.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button class="btn btn-secondary read_more rounded-pill">
                Scopri di più
              </button>
            </div>
          </div>
          <img src="assets/formazione-1.jpg" alt="" />
        </div>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">Consulenza</h3>
            <p class="text-center">
              Questa categoria fornisce un ampio supporto alle aziende per
              affrontare sfide strategiche e operazioni aziendali complesse. I
              servizi di consulenza aiutano le imprese a migliorare
              l'efficienza, a rispondere alle dinamiche del mercato e a
              promuovere l’innovazione tecnologica e manageriale.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button class="btn btn-secondary read_more rounded-pill">
                Scopri di più
              </button>
            </div>
          </div>
          <img src="assets/supporto-finanziamenti.jpg" alt="" />
        </div>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">Skills and Training</h3>
            <p class="text-center">
              La formazione è un aspetto cruciale per l’aggiornamento delle
              competenze interne e per rispondere alle sfide di un mercato
              sempre più competitivo e tecnologicamente avanzato. Questa
              categoria offre corsi strutturati per sviluppare competenze
              tecnologiche, manageriali e trasversali.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button class="btn btn-secondary read_more rounded-pill">
                Scopri di più
              </button>
            </div>
          </div>
          <img src="assets/supporto-finanziamenti.jpg" alt="" />
        </div>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">Access to Finance</h3>
            <p class="text-center">
              Questa categoria aiuta le aziende ad accedere a diverse forme di
              finanziamento, sia pubbliche che private, per finanziare progetti
              innovativi e di crescita. I servizi offrono consulenza mirata per
              la gestione di fondi e risorse, rendendo più facile l'accesso a
              capitali necessari per lo sviluppo.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button class="btn btn-secondary read_more rounded-pill">
                Scopri di più
              </button>
            </div>
          </div>
          <img src="assets/supporto-finanziamenti.jpg" alt="" />
        </div>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">
              Networking, Ecosystem e Open Innovation
            </h3>
            <p class="text-center">
              Questa categoria supporta la creazione di connessioni tra aziende,
              startup, università, istituzioni e investitori, promuovendo la
              collaborazione e l’innovazione aperta. L'obiettivo è favorire la
              creazione di ecosistemi dinamici in cui le imprese possano
              crescere attraverso il confronto e l’interazione con altri attori.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button class="btn btn-secondary read_more rounded-pill">
                Scopri di più
              </button>
            </div>
          </div>
          <img src="assets/supporto-finanziamenti.jpg" alt="" />
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
