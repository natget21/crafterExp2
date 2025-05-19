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
          
            <#list contentModel.obiettivi_o as obiettivo>
                <div class="d-flex flex-column col-12 col-md-6 col-lg-4">
                  <div class="obj d-flex gap-3">
                    <img class="obj_image" src="static-assets/assets/matching.png" alt="" />
                    <p><strong>${obiettivo.titolo_s}</strong></p>
                  </div>
                  <p class="desc">
                    ${obiettivo.descrizione_t}
                  </p>
                </div>
            </#list>

            <div class="d-flex flex-column col-12 col-md-6 col-lg-4">
              <div class="obj d-flex gap-3">
                <img class="obj_image" src="static-assets/assets/matching.png" alt="" />
                <p><strong>Matching</strong></p>
              </div>
              <p class="desc">
                Connettere domanda e offerta in modo intelligente e rapido.
              </p>
            </div>
            <div class="d-flex flex-column col-12 col-md-6 col-lg-4">
              <div class="obj d-flex gap-3">
                <img class="obj_image" src="static-assets/assets/co-progettazione.png" alt="" />
                <p><strong>Co-progettazione</strong></p>
              </div>
              <p class="desc">
                Favorire la co-progettazione tra startup, PMI, PA, università e
                grandi imprese.
              </p>
            </div>
            <div class="d-flex flex-column col-12 col-md-6 col-lg-4">
              <div class="obj d-flex gap-3">
                <img class="obj_image" src="static-assets/assets/digital-trasformation.png" alt="" />
                <p><strong>Digital Trasformation</strong></p>
              </div>
              <p class="desc">
                Supportare la trasformazione digitale nei settori del turismo,
                cultura e sociale.
              </p>
            </div>
            <div class="d-flex flex-column col-12 col-md-6 col-lg-4">
              <div class="obj d-flex gap-3">
                <img class="obj_image" src="static-assets/assets/business-model.png" alt="" />
                <p><strong>Business models </strong></p>
              </div>
              <p class="desc">
                Promuovere modelli di business sostenibili e collaborativi.
              </p>
            </div>
            <div class="d-flex flex-column col-12 col-md-6 col-lg-4">
              <div class="obj d-flex gap-3">
                <img class="obj_image" src="static-assets/assets/formazione-innovativa.png" alt="" />
                <p><strong>Formazione innovativa </strong></p>
              </div>
              <p class="desc">
                Innovare la formazione con tecnologie immersive e approcci
                esperienziali.
              </p>
            </div>
            <div class="d-flex flex-column col-12 col-md-6 col-lg-4">
              <div class="obj d-flex gap-3">
                <img class="obj_image" src="static-assets/assets/certificare-le-competenze.png" alt="" />
                <p><strong>Certificare le competenze </strong></p>
              </div>
              <p class="desc">
                Misurare e certificare le competenze digitali, anche nella PA.
              </p>
            </div>
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
            <li>
              <p>
                <strong> AI e VR </strong> per connettere bisogni e soluzioni in
                modo personalizzato
              </p>
            </li>
            <li>
              <p>
                <strong>Marketplace digitale</strong> per promuovere servizi
                innovativi
              </p>
            </li>
            <li>
              <p><strong>Formazione immersiva</strong> e adattiva</p>
            </li>
            <li>
              <p>
                <strong>Strumenti di collaborazione real-time</strong>, come
                stanze virtuali e call for procurement
              </p>
            </li>
          </ul>
        </div>
      </div>
      <div
        class="layout_padding services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="services_section_title title_section">Prodotti e Servizi</h2>
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
