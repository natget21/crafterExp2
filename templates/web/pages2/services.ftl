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
    <link rel="stylesheet" href="/static-assets/css/services.css" />
    
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
        <img class="banner_img" src="static-assets/assets/servizi.png">
        <div class="container">
          <h1 class="best_taital text-center text-white p-0 dark">
            Servizi Digitali
          </h1>
        </div>
      </div>

      
      <div
        class="layout_padding mx-auto justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6 mb-4">Cosa offriamo</h2>
        <p class="mt-3">
          Il Polo InnoVA propone un’offerta integrata di servizi e soluzioni
          pensate per accompagnare imprese e Pubbliche Amministrazioni lungo
          l’intero percorso di innovazione e digitalizzazione. Attraverso
          strumenti avanzati, iniziative di networking e percorsi formativi,
          InnoVA facilita:
        </p>
        <ul class="mb-4">
          <li>
            <p>l’adozione di tecnologie all’avanguardia;</p>
          </li>
          <li><p>lo sviluppo delle competenze digitali;</p></li>
          <li><p>l’accesso a finanziamenti pubblici e privati;</p></li>
          <li>
            <p>la creazione di sinergie tra aziende, startup e istituzioni.</p>
          </li>
        </ul>
        <p class="">
          L’offerta del Polo InnoVA si articola in cinque linee di intervento,
          concepite per accompagnare le organizzazioni – pubbliche e private –
          lungo l’intero percorso di innovazione digitale, dalla fase iniziale
          di assessment fino alla piena adozione delle tecnologie e alla
          creazione di un vero e proprio ecosistema innovativo.
        </p>
      </div>
      <div
        class="services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <div
          class="service mt-5 d-flex justify-content-between align-items-center"
        >
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">
              Audit Tecnico & Assessment
            </h3>
            <p class="text-center">
              Prima di intraprendere qualsiasi percorso di innovazione
              tecnologica, è indispensabile analizzare in modo approfondito
              l’infrastruttura digitale e i processi operativi esistenti. Il
              servizio di Audit Tecnico e Assessment, offerto dal Polo InnoVA,
              consente di valutare il livello di maturità digitale
              dell’organizzazione, applicando metodologie consolidate e
              riferimenti agli standard europei. L’analisi prende in esame
              l’intero ecosistema digitale – dai sistemi informativi alle reti,
              dai workflow ai dispositivi – per individuare punti di forza,
              criticità e potenzialità di miglioramento. Al termine
              dell’attività, viene restituito un report dettagliato, corredato
              da una mappa delle priorità e da un piano di intervento
              personalizzato, pensato per accompagnare l’impresa o l’ente verso
              un’evoluzione tecnologica strutturata, consapevole e sostenibile.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button
                class="btn btn-secondary read_more rounded-pill"
                onclick="window.location.href='/test-before-invest'"
              >
                Scopri di più
              </button>
            </div>
          </div>
          <img src="static-assets/assets/assessment-1.jpg" alt="" />
        </div>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">Test Before Invest</h3>
            <p class="text-center">
              Prima di adottare una nuova tecnologia, è essenziale comprenderne
              a fondo l’impatto operativo attraverso una sperimentazione in
              condizioni reali. Per questo motivo, il Polo InnoVA mette a
              disposizione Living Lab e Proof of Concept, spazi dimostrativi
              dove è possibile installare, configurare e testare sul campo
              soluzioni di video analisi e videosorveglianza. Questi ambienti
              sperimentali permettono di osservare le tecnologie in azione,
              valutarne le prestazioni, rilevare eventuali criticità e
              raccogliere dati concreti. L’obiettivo è offrire agli enti e alle
              imprese strumenti utili per compiere scelte di investimento più
              informate, sicure e in linea con i reali bisogni operativi.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button
                class="btn btn-secondary read_more rounded-pill"
                onclick="window.location.href='/test-before-invest'"
              >
                Scopri di più
              </button>
            </div>
          </div>
          <img src="static-assets/assets/test-before-invest-1.jpg" alt="" />
        </div>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">Formazione</h3>
            <p class="text-center">
              La disponibilità di tecnologie avanzate, da sola, non basta:
              affinché l’innovazione sia realmente efficace, è necessario
              accompagnarla con adeguati percorsi di formazione. Il Polo InnoVA
              propone programmi didattici modulari e flessibili, pensati per
              rispondere alle esigenze specifiche di enti e imprese. Le modalità
              di erogazione spaziano da guide online e video-tutorial fruibili
              in autonomia, a workshop specialistici in presenza, fino a
              percorsi universitari strutturati come il master in Computer
              Vision e Intelligenza Artificiale. Ogni attività formativa è
              progettata per trasferire competenze pratiche e immediatamente
              applicabili, favorendo un uso consapevole e strategico delle
              tecnologie introdotte.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button
                class="btn btn-secondary read_more rounded-pill"
                onclick="window.location.href='/test-before-invest'"
              >
                Scopri di più
              </button>
            </div>
          </div>
          <img src="static-assets/assets/formazione-1.jpg" alt="" />
        </div>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">
              Consulenza per l’Accesso ai Finanziamenti
            </h3>
            <p class="text-center">
              Uno degli ostacoli più ricorrenti nel percorso di innovazione è la
              difficoltà di accedere a risorse economiche adeguate. Per superare
              questo ostacolo, Il Polo InnoVA offre un servizio di consulenza
              end-to-end: dalla mappatura delle opportunità di finanziamento
              (bandi regionali, nazionali ed europei), alla stesura delle
              proposte progettuali, fino alla rendicontazione delle spese.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button
                class="btn btn-secondary read_more rounded-pill"
                onclick="window.location.href='/consulenza'"
              >
                Scopri di più
              </button>
            </div>
          </div>
          <img src="static-assets/assets/supporto-finanziamenti.jpg" alt="" />
        </div>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">
              Consulenza su Innovazione di Processo e di Prodotto, Networking e
              Sensibilizzazione
            </h3>
            <p class="text-center">
              L’innovazione è un processo collettivo: nasce dallo scambio di
              idee, dall’ibridazione di competenze e dalla condivisione di
              esperienze. In quest’ottica, il Polo InnoVA supporta la
              definizione di strategie di innovazione – sia di processo che di
              prodotto – e organizza eventi, workshop tematici e tavoli di
              lavoro, mettendo in rete imprese, centri di ricerca e Pubbliche
              Amministrazioni. Parallelamente, sarà creato un repository di best
              practice, in cui storie di successo e casi concreti del progetto
              InnoVA offriranno spunti di applicazione e ispirazione per nuovi
              progetti e collaborazioni.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button
                class="btn btn-secondary read_more rounded-pill"
                onclick="window.location.href='/skills-training'"
              >
                Scopri di più
              </button>
            </div>
          </div>
          <img src="static-assets/assets/supporto-finanziamenti.jpg" alt="" />
        </div>
      </div>
      <div class="d-flex flex-column flex-md-row gap-3 layout_padding">
        <div
          class="col-12 col-md-6 d-flex justify-content-center w-100 w-md-50"
        >
          <a
            href="static-assets/assets/catalogo-dei-servizi-innova-ed.1-rev.pdf"
            download
            class="btn btn-secondary rounded-5"
          >
            Scarica il catalogo dei servizi
          </a>
        </div>
        <div
          class="col-12 col-md-6 d-flex justify-content-center w-100 w-md-50"
        >
          <a download class="btn btn-secondary rounded-5">
            Come accedere ai servizi
          </a>
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
