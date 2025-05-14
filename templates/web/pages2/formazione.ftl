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
        <img class="banner_img" src="/static-assets/assets/progetto.png">
        <div class="container flex-column align-items-end">
          <h1 class="best_taital text-center dark p-0">Formazione</h1>
          <p
            class="there_text d-flex justify-content-end dark p-0 m-0"
          >
            L’innovazione condivisa per costruire valore
          </p>
        </div>
      </div>
      <div
        class="mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <div class="marketing_section layout_padding mb-5">
          <!--
          <h2 class="marketing_title title_section">
          </h2>
        -->
          <p>
            Il progetto InnoVA (Innovating Video Analytics), coordinato
            dall’Università degli Studi di Palermo, mira a costituire un
            ecosistema di innovazione digitale specializzato nella video analisi
            e nella videosorveglianza, al servizio di pubbliche amministrazioni
            e imprese private.
          </p>
          <p>
            L’hub InnoVA si propone di valorizzare le potenzialità offerte dalle
            tecnologie di video analytics, rendendole fruibili e accessibili a
            utenti diversi e in molteplici contesti operativi. Attraverso
            dimostratori ad hoc, il progetto svilupperà soluzioni su misura per
            specifiche esigenze, mentre percorsi di affiancamento e formazione
            accompagneranno gli utilizzatori nell’adozione pratica delle
            piattaforme proposte, evidenziando al contempo i benefici in termini
            di efficienza, sicurezza e contenimento dei cost
          </p>
          <p class="m-0">
            Grazie al riconoscimento di “Seal of Excellence” conferito dalla
            Commissione Europea e al finanziamento del Ministero delle Imprese e
            del Made in Italy (MIMIT), InnoVA è entrato ufficialmente nella rete
            nazionale ed europea degli European Digital Innovation Hubs (EDIHs),
            rafforzando il proprio ruolo di polo strategico per il trasferimento
            tecnologico e l’innovazione nei settori della mobilità intelligente,
            del monitoraggio del territorio e della gestione delle
            infrastrutture critiche.
          </p>
        </div>
        <hr />
      </div>
      <div
        class="services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="services_section_title title_section">Servizi Offerti</h2>
        <p class="services_section_description mb-0 mt-3">
          Il Polo InnoVA propone un ventaglio integrato di prestazioni
          finalizzate a sostenere la trasformazione digitale e l’innovazione di
          imprese e pubbliche amministrazioni:
        </p>
        <div class="mt-5">
          <div class="accordion" id="servicesAccordion">
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#serviceOne"
                  aria-expanded="false"
                  aria-controls="serviceOne"
                >
                  Audit Tecnico & Assessment
                </button>
              </h2>
              <div
                id="serviceOne"
                class="accordion-collapse collapse"
                data-bs-parent="#servicesAccordion"
              >
                <div class="accordion-body">
                  Valutazione dello stato dell’arte delle infrastrutture
                  digitali e dei processi, con l’obiettivo di definire il
                  livello di maturità tecnologica e individuare le priorità di
                  intervento.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#serviceTwo"
                  aria-expanded="false"
                  aria-controls="serviceTwo"
                >
                  Test Before Invest
                </button>
              </h2>
              <div
                id="serviceTwo"
                class="accordion-collapse collapse"
                data-bs-parent="#servicesAccordion"
              >
                <div class="accordion-body">
                  Allestimento di Living Lab e Proof of Concept per verificare
                  sul campo l’efficacia di soluzioni di video analisi e
                  videosorveglianza prima di impegnare risorse in investimenti.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#serviceThree"
                  aria-expanded="false"
                  aria-controls="serviceThree"
                >
                  Formazione
                </button>
              </h2>
              <div
                id="serviceThree"
                class="accordion-collapse collapse"
                data-bs-parent="#servicesAccordion"
              >
                <div class="accordion-body">
                  Percorsi formativi modulabili – da guide online e
                  video-tutorial a workshop specialistici e master universitari
                  – per acquisire le competenze necessarie all’utilizzo delle
                  nuove tecnologie.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#serviceFour"
                  aria-expanded="false"
                  aria-controls="serviceFour"
                >
                  Consulenza per l’Accesso ai Finanziamenti
                </button>
              </h2>
              <div
                id="serviceFour"
                class="accordion-collapse collapse"
                data-bs-parent="#servicesAccordion"
              >
                <div class="accordion-body">
                  Supporto nella ricerca e nella gestione di opportunità di
                  finanziamento a livello regionale, nazionale ed europeo,
                  comprensivo di redazione delle domande e rendicontazione.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#serviceFive"
                  aria-expanded="false"
                  aria-controls="serviceFive"
                >
                  Consulenza su Innovazione di Processo e di Prodotto,
                  Networking e Sensibilizzazione
                </button>
              </h2>
              <div
                id="serviceFive"
                class="accordion-collapse collapse"
                data-bs-parent="#servicesAccordion"
              >
                <div class="accordion-body">
                  Definizione di strategie di innovazione, organizzazione di
                  eventi e tavoli di lavoro per mettere in rete stakeholder, e
                  creazione di un repository di best practice per diffondere
                  casi di successo.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div
        class="layout_padding services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="services_section_title title_section">
          Tecnologie e Innovazione
        </h2>
        <p class="services_section_description mb-0 mt-3">
          Le soluzioni sviluppate da InnoVa si basano su tecnologie abilitanti
          di ultima generazione, tra cui:
        </p>
        <div class="mt-5">
          <div class="accordion" id="techsAccordion">
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#techOne"
                  aria-expanded="false"
                  aria-controls="techOne"
                >
                  Intelligenza Artificiale & Machine Learning
                </button>
              </h2>
              <div
                id="techOne"
                class="accordion-collapse collapse"
                data-bs-parent="#techsAccordion"
              >
                <div class="accordion-body">
                  Algoritmi avanzati per l’elaborazione di dati visivi e il
                  riconoscimento automatico.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#techTwo"
                  aria-expanded="false"
                  aria-controls="techTwo"
                >
                  High Performance Computing & Big Data
                </button>
              </h2>
              <div
                id="techTwo"
                class="accordion-collapse collapse"
                data-bs-parent="#techsAccordion"
              >
                <div class="accordion-body">
                  Analisi in tempo reale di flussi video complessi per
                  applicazioni di sicurezza e monitoraggio.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#techThree"
                  aria-expanded="false"
                  aria-controls="techThree"
                >
                  Cloud Computing & Cybersecurity
                </button>
              </h2>
              <div
                id="techThree"
                class="accordion-collapse collapse"
                data-bs-parent="#techsAccordion"
              >
                <div class="accordion-body">
                  Infrastrutture scalabili e sicure per la gestione dei dati e
                  la protezione delle informazioni sensibili.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#techFour"
                  aria-expanded="false"
                  aria-controls="techFour"
                >
                  Sistemi di supporto alle decisioni
                </button>
              </h2>
              <div
                id="techFour"
                class="accordion-collapse collapse"
                data-bs-parent="#techsAccordion"
              >
                <div class="accordion-body">
                  Strumenti avanzati per migliorare la governance e l’efficacia
                  operativa di imprese e amministrazioni.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#techFive"
                  aria-expanded="false"
                  aria-controls="techFive"
                >
                  Sensori IoT e Computer Vision
                </button>
              </h2>
              <div
                id="techFive"
                class="accordion-collapse collapse"
                data-bs-parent="#techsAccordion"
              >
                <div class="accordion-body">
                  Tecnologie per il monitoraggio avanzato dell’ambiente urbano,
                  industriale e infrastrutturale.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div
        class="layout_padding d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0 objectives mb-5"
      >
        <h2 class="title_section">
          Un modello collaborativo per l’eccellenza digitale
        </h2>
        <p class="mt-3">
          Il Seal of Excellence InnoVA coordina gli attori chiave del panorama
          italiano, connettendo competenze, infrastrutture tecnologiche e
          know-how specializzato al fine di:
        </p>
        <ul>
          <li>
            <p>
              Creare un ecosistema di eccellenza nella video analisi e nella
              videosorveglianza intelligente.
            </p>
          </li>
          <li>
            <p>
              Supportare imprese e pubbliche amministrazioni nell’adozione di
              tecnologie digitali innovative.
            </p>
          </li>
          <li>
            <p>
              Stimolare investimenti in soluzioni avanzate per la sicurezza e il
              monitoraggio del territorio.
            </p>
          </li>
          <li>
            <p>
              Favorire la sinergia tra ricerca, industria e istituzioni per
              rafforzare la competitività e la leadership tecnologica italiana
            </p>
          </li>
        </ul>
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