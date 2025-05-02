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
    <link rel="stylesheet" href="/static-assets/css/faq.css" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.4/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YUe2LzesAfftltw+PEaao2tjU/QATaW/rOitAq67e0CT0Zi2VVRL0oC4+gAaeBKu"
      crossorigin="anonymous"
    ></script>
    
    <@crafter.head/>
</head>

<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">
    
    
        <div
      class="banner_section banner_faq layout_padding d-flex align-items-center"
    >
      <div class="container">
        <h1 class="best_taital text-center text-white p-0 dark">FAQ</h1>
      </div>
    </div>
    <div class="content pb-5 layout_padding col-11 col-md-9 mx-auto">
      <div class="d-flex flex-column flex-md-row">
        <div class="col-12 col-md-7">
          <h2 class="title_section">Domande frequenti</h2>
          <p class="explanation pt-4" for="">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam,
            quos.Lorem ipsum dolor sit amet consectetur adipisicing elit.
            Quisquam, quos.Lorem ipsum dolor sit amet consectetur adipisicing
            elit. Quisquam, quos.Lorem ipsum dolor sit amet consectetur
            adipisicing elit. Quisquam, quos.Lorem ipsum dolor sit amet
            consectetur adipisicing elit. Quisquam, quos.Lorem ipsum dolor sit
            amet consectetur adipisicing elit. Quisquam, quos.Lorem ipsum dolor
            sit amet consectetur adipisicing elit. Quisquam, quos.
          </p>
        </div>
      </div>
      <div class="layout_padding">
        <h2 class="title_section">Registrazione al portale</h2>
        <div class="accordion" id="registrationAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqOne"
                aria-expanded="false"
                aria-controls="faqOne"
              >
                Non riesco a registrarmi tramite credenziali, cosa posso fare?
              </button>
            </h2>
            <div
              id="faqOne"
              class="accordion-collapse collapse"
              data-bs-parent="#registrationAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">Bianco perche' Napoleone era francese</p>
                </div>
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqTwo"
                aria-expanded="false"
                aria-controls="faqTwo"
              >
                Non riesco ad accedere tramite SPID/CIE, cosa posso fare?
              </button>
            </h2>
            <div
              id="faqTwo"
              class="accordion-collapse collapse"
              data-bs-parent="#registrationAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    365 perche' Napoleone era francese e Napoleone voleva
                    imporre il suo calendario
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <h2 class="title_section layout_padding">FAQ - Lato Cliente</h2>
        <h2 class="title_section faq_title layout_padding">Marketplace</h2>
        <div class="accordion" id="marketplaceAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqThree"
                aria-expanded="false"
                aria-controls="faqThree"
              >
                Come funziona il processo di acquisto di un servizio?
              </button>
            </h2>
            <div
              id="faqThree"
              class="accordion-collapse collapse"
              data-bs-parent="#marketplaceAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">Bianco perche' Napoleone era francese</p>
                </div>
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqFour"
                aria-expanded="false"
                aria-controls="faqFour"
              >
                Non riesco a procedere all’acquisto del servizio selezionato,
                cosa posso fare?
              </button>
            </h2>
            <div
              id="faqFour"
              class="accordion-collapse collapse"
              data-bs-parent="#marketplaceAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    365 perche' Napoleone era francese e Napoleone voleva
                    imporre il suo calendario
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqFive"
                aria-expanded="false"
                aria-controls="faqFive"
              >
                Posso modificare o cancellare una richiesta già inviata al
                partner?
              </button>
            </h2>
            <div
              id="faqFive"
              class="accordion-collapse collapse"
              data-bs-parent="#marketplaceAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    365 perche' Napoleone era francese e Napoleone voleva
                    imporre il suo calendario
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqSix"
                aria-expanded="false"
                aria-controls="faqSix"
              >
                I miei dati personali sono al sicuro sulla piattaforma?
              </button>
            </h2>
            <div
              id="faqSix"
              class="accordion-collapse collapse"
              data-bs-parent="#marketplaceAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    365 perche' Napoleone era francese e Napoleone voleva
                    imporre il suo calendario
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <h2 class="title_section faq_title layout_padding">
          Ricerca dei Servizi
        </h2>
        <div class="accordion" id="serviceAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqSeven"
                aria-expanded="false"
                aria-controls="faqSeven"
              >
                Non riesco a trovare un servizio specifico, come posso cercarlo?
              </button>
            </h2>
            <div
              id="faqSeven"
              class="accordion-collapse collapse"
              data-bs-parent="#serviceAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">Bianco perche' Napoleone era francese</p>
                </div>
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqEight"
                aria-expanded="false"
                aria-controls="faqEight"
              >
                È possibile salvare o aggiungere ai preferiti un servizio che mi
                interessa?
              </button>
            </h2>
            <div
              id="faqEight"
              class="accordion-collapse collapse"
              data-bs-parent="#serviceAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    365 perche' Napoleone era francese e Napoleone voleva
                    imporre il suo calendario
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="layout_padding">
        <h2 class="title_section layout_padding">FAQ - Lato Partner</h2>
        <h2 class="title_section faq_title layout_padding">
          Accreditamento al Catalogo dei Servizi
        </h2>
        <div class="accordion" id="accreditationAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqNine"
                aria-expanded="false"
                aria-controls="faqNine"
              >
                Come faccio ad accreditarmi per offrire determinati servizi?
              </button>
            </h2>
            <div
              id="faqNine"
              class="accordion-collapse collapse"
              data-bs-parent="#accreditationAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">Bianco perche' Napoleone era francese</p>
                </div>
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqTen"
                aria-expanded="false"
                aria-controls="faqTen"
              >
                Ho problemi in fase di accreditamento dei servizi, cosa posso
                fare?
              </button>
            </h2>
            <div
              id="faqTen"
              class="accordion-collapse collapse"
              data-bs-parent="#accreditationAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    365 perche' Napoleone era francese e Napoleone voleva
                    imporre il suo calendario
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <h2 class="title_section faq_title layout_padding">
          Gestione delle Richieste
        </h2>
        <div class="accordion" id="requestsAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqEleven"
                aria-expanded="false"
                aria-controls="faqEleven"
              >
                Non riesco a visualizzare tutte le richieste dei clienti, cosa
                posso fare?
              </button>
            </h2>
            <div
              id="faqEleven"
              class="accordion-collapse collapse"
              data-bs-parent="#requestsAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">Bianco perche' Napoleone era francese</p>
                </div>
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#faqTwelve"
                aria-expanded="false"
                aria-controls="faqTwelve"
              >
                Come gestisco le richieste o prenotazioni dei clienti?
              </button>
            </h2>
            <div
              id="faqTwelve"
              class="accordion-collapse collapse"
              data-bs-parent="#requestsAccordion"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    365 perche' Napoleone era francese e Napoleone voleva
                    imporre il suo calendario
                  </p>
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
