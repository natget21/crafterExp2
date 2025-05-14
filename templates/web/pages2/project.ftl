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
          <h1 class="best_taital text-center dark p-0">Visione</h1>
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
            Il progetto InnoVA (Innovating Video Analytics), coordinato dall’Università degli Studi di Palermo, mira a costituire un ecosistema di innovazione digitale specializzato nella video analisi e nella videosorveglianza, al servizio di pubbliche amministrazioni e imprese private.
          </p>
          <p>
            L’hub InnoVA si propone di valorizzare le potenzialità offerte dalle tecnologie di video analytics, rendendole fruibili e accessibili a utenti diversi e in molteplici contesti operativi. Attraverso dimostratori ad hoc, il progetto svilupperà soluzioni su misura per specifiche esigenze, mentre percorsi di affiancamento e formazione accompagneranno gli utilizzatori nell’adozione pratica delle piattaforme proposte, evidenziando al contempo i benefici in termini di efficienza, sicurezza e contenimento dei cost
          </p>
          <p class="m-0">
            Grazie al riconoscimento di “Seal of Excellence” conferito dalla Commissione Europea e al finanziamento del Ministero delle Imprese e del Made in Italy (MIMIT), InnoVA è entrato ufficialmente nella rete nazionale ed europea degli European Digital Innovation Hubs (EDIHs), rafforzando il proprio ruolo di polo strategico per il trasferimento tecnologico e l’innovazione nei settori della mobilità intelligente, del monitoraggio del territorio e della gestione delle infrastrutture critiche.
          </p>
        </div>
        <hr />
      </div>
      <div
        class="services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="services_section_title title_section">Servizi Offerti</h2>
        <p class="services_section_description mb-0 mt-3">
          La piattaforma offre un'ampia gamma di prodotti e servizi digitali
          pensati per facilitare l'adozione di tecnologie innovative, lo
          sviluppo delle competenze digitali, l'accesso ai finanziamenti e la
          creazione di reti collaborative tra aziende, startup, istituzioni ed
          Enti del Terzo settore. L'offerta si suddivide in due aree principali:
        </p>
        <div class="mt-5">
          <p class="title_section sub_title">Prodotti digitali</p>
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
                  E-services
                </button>
              </h2>
              <div
                id="productOne"
                class="accordion-collapse collapse"
                data-bs-parent="#productsAccordion"
              >
                <div class="accordion-body">
                  Microservizi completi con interfaccia utente, pronti all'uso
                  per il cliente finale
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
                  API
                </button>
              </h2>
              <div
                id="productTwo"
                class="accordion-collapse collapse"
                data-bs-parent="#productsAccordion"
              >
                <div class="accordion-body">
                  Interfacce di programmazione senza GUI, per l'integrazione
                  diretta con altri sistemi
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="mt-5">
          <p class="title_section sub_title">Servizi digitali</p>
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
                  Test Before Invest
                </button>
              </h2>
              <div
                id="serviceOne"
                class="accordion-collapse collapse"
                data-bs-parent="#servicesAccordion"
              >
                <div class="accordion-body">
                  Servizi che permettono alle aziende di esplorare e testare
                  nuove tecnologie e soluzioni prima di effettuare investimenti,
                  attraverso dimostrazioni pratiche, studi di fattibilità,
                  proof-of-concept, test e validazione di soluzioni.
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
                  Consulenza
                </button>
              </h2>
              <div
                id="serviceTwo"
                class="accordion-collapse collapse"
                data-bs-parent="#servicesAccordion"
              >
                <div class="accordion-body">
                  Servizi progettati per supportare le aziende nel loro percorso
                  di innovazione e crescita, fornendo supporto strategico e
                  operativo su diverse aree come l'orientamento tecnologico, la
                  gestione del cambiamento, l'innovazione sociale e la
                  consulenza ICT e manageriale.
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
                  Skills and Training
                </button>
              </h2>
              <div
                id="serviceThree"
                class="accordion-collapse collapse"
                data-bs-parent="#servicesAccordion"
              >
                <div class="accordion-body">
                  Offerta di corsi di formazione standard e personalizzati per
                  sviluppare competenze in ambito digitale, manageriale e
                  tecnico, con l'obiettivo di potenziare le capacità delle
                  risorse umane aziendali in settori strategici.
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
                  Access to Finance
                </button>
              </h2>
              <div
                id="serviceFour"
                class="accordion-collapse collapse"
                data-bs-parent="#servicesAccordion"
              >
                <div class="accordion-body">
                  Servizi di consulenza finalizzati a facilitare l'accesso a
                  finanziamenti pubblici e privati, tra cui la finanza
                  agevolata, la progettazione di crowdfunding, l'accesso al
                  credito, le misure fiscali e la consulenza in corporate
                  finance.
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
                  Networking, Ecosystem e Open Innovation
                </button>
              </h2>
              <div
                id="serviceFive"
                class="accordion-collapse collapse"
                data-bs-parent="#servicesAccordion"
              >
                <div class="accordion-body">
                  Attività mirate a facilitare il networking tra aziende,
                  istituzioni e innovatori, promuovendo la creazione di alleanze
                  strategiche, la diffusione di conoscenze e la partecipazione a
                  eventi di innovazione aperta come hackathon e incontri di
                  brokeraggio.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div
        class="layout_padding addressee_section mx-auto col-11 col-md-9 px-0"
      >
        <h2 class="title_section">Destinatari</h2>
        <div class="row pl-3">
          <div
            class="layout_padding addressee px-0 col-12 col-md-3 d-flex justify-content-start flex-column gap-3"
          >
            <div class="imageContainer">
              <img src="/static-assets/assets/imprese.png" alt="" />
            </div>
            <p class="addressee_text d-flex justify-content-start">Imprese</p>
          </div>
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
