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
      <img class="banner_img" src="static-assets/assets/faq.png">
      <div class="container">
        <h1 class="best_taital text-center text-white p-0 dark">FAQ</h1>
      </div>
    </div>
    <div class="content pb-5 layout_padding col-11 col-md-9 mx-auto">
      <div class="d-flex flex-column flex-md-row">
        <div class="">
          <h2 class="title_section">
            Hai dei dubbi? Consulta le domande frequenti
          </h2>
        </div>
      </div>
      <form class="d-flex mt-5" role="search">
        <input
          id="faqSearch"
          class="form-control me-2 rounded"
          type="search"
          placeholder="Cerca tra le domande..."
          aria-label="Search"
        />
        <button class="btn btn-primary rounded" type="button">
          <i class="bi bi-search"></i>
        </button>
      </form>

      <div class="layout_padding">
          <strong> ${contentModel.registrazionefaqs_o} </strong>
        <#if contentModel.registrazionefaqs_o?? && contentModel.registrazionefaqs_o?has_content>
            <h2 class="title_section faq_title">Registrazione al portale</h2>
            <#list contentModel.registrazionefaqs_o.item  as item>
                <#if item.id_s?? && item.id_s?has_content>
                    <div class="accordion mb-3" id="registration-${item.id_s}">
                      <div class="accordion-item">
                        <h2 class="accordion-header">
                          <button
                            class="accordion-button faq-question collapsed"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#registration-button-${item.id_s}"
                            aria-expanded="false"
                            aria-controls="registration-button-${item.id_s}"
                          >
                            <#if item.titolo_t?? && item.titolo_t?has_content>
                                ${item.titolo_t}
                            </#if>
                          </button>
                        </h2>
                        <div
                          id="registration-button-${item.id_s}"
                          class="accordion-collapse collapse"
                          data-bs-parent="#registration-${item.id_s}"
                        >
                          <div class="accordion-body row row-gap-5">
                            <div class="col-12 info">
                              <p class="fs-5 desc">
                                <#if item.risposta_t?? && item.risposta_t?has_content>
                                    ${item.risposta_t}
                                </#if>
                              </p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                </#if>
            </#list>
        </#if>
        <#if contentModel.registrazionefaqs_o?? && contentModel.registrazionefaqs_o?has_content>
            <h2 class="title_section faq_title">Marketplace</h2>
            <#list contentModel.registrazionefaqs_o.item  as item>
                <#if item.id_s?? && item.id_s?has_content>
                    <div class="accordion mb-3" id="marketplaceAccordion">
                      <div class="accordion-item">
                        <h2 class="accordion-header">
                          <button
                            class="accordion-button faq-question collapsed"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#faq-${item.id_s}"
                            aria-expanded="false"
                            aria-controls="faq-${item.id_s}"
                          >
                            <#if item.titolo_t?? && item.titolo_t?has_content>
                                ${item.titolo_t}
                            </#if>
                          </button>
                        </h2>
                        <div
                          id="faq-${item.id_s}"
                          class="accordion-collapse collapse"
                          data-bs-parent="#marketplaceAccordion"
                        >
                          <div class="accordion-body row row-gap-5">
                            <div class="col-12 info">
                              <p class="fs-5 desc">
                                <#if item.risposta_t?? && item.risposta_t?has_content>
                                    ${item.risposta_t}
                                </#if>
                              </p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                </#if>
            </#list>
        </#if>
        <h2 class="title_section faq_title layout_padding">Marketplace</h2>
        <div class="accordion mb-3" id="marketplaceAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button faq-question collapsed"
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
                  <p class="fs-5 desc">
                    Clicca qui e inizia a scrivere. Veritatis et quasi
                    architecto beatae vitae dicta sunt explicabo nemo enim ipsam
                    voluptatem quia voluptas sit aspernatur aut odit aut fugit
                    sed quia consequuntur magni dolores eos qui ratione
                    voluptatem sequi nesciunt.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="accordion mb-3" id="servizioSelezionato">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button faq-question collapsed"
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
              data-bs-parent="#servizioSelezionato"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    Clicca qui e inizia a scrivere. Veritatis et quasi
                    architecto beatae vitae dicta sunt explicabo nemo enim ipsam
                    voluptatem quia voluptas sit aspernatur aut odit aut fugit
                    sed quia consequuntur magni dolores eos qui ratione
                    voluptatem sequi nesciunt.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="accordion mb-3" id="modificaCancellazione">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button faq-question collapsed"
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
              data-bs-parent="#modificaCancellazione"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    Clicca qui e inizia a scrivere. Veritatis et quasi
                    architecto beatae vitae dicta sunt explicabo nemo enim ipsam
                    voluptatem quia voluptas sit aspernatur aut odit aut fugit
                    sed quia consequuntur magni dolores eos qui ratione
                    voluptatem sequi nesciunt.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="accordion mb-3" id="datiPersonali">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button faq-question collapsed"
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
              data-bs-parent="#datiPersonali"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    Clicca qui e inizia a scrivere. Veritatis et quasi
                    architecto beatae vitae dicta sunt explicabo nemo enim ipsam
                    voluptatem quia voluptas sit aspernatur aut odit aut fugit
                    sed quia consequuntur magni dolores eos qui ratione
                    voluptatem sequi nesciunt.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <h2 class="title_section faq_title layout_padding">Ricerca dei Servizi</h2>
        <div class="accordion mb-3" id="serviceAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button faq-question collapsed"
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
                  <p class="fs-5 desc">
                    Clicca qui e inizia a scrivere. Veritatis et quasi
                    architecto beatae vitae dicta sunt explicabo nemo enim ipsam
                    voluptatem quia voluptas sit aspernatur aut odit aut fugit
                    sed quia consequuntur magni dolores eos qui ratione
                    voluptatem sequi nesciunt.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="accordion mb-3" id="salvareAggiungere">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button faq-question collapsed"
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
              data-bs-parent="#salvareAggiungere"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    Clicca qui e inizia a scrivere. Veritatis et quasi
                    architecto beatae vitae dicta sunt explicabo nemo enim ipsam
                    voluptatem quia voluptas sit aspernatur aut odit aut fugit
                    sed quia consequuntur magni dolores eos qui ratione
                    voluptatem sequi nesciunt.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="layout_padding">
        <h2 class="title_section faq_title">Accreditamento al Catalogo dei Servizi</h2>
        <div class="accordion mb-3" id="accreditationAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button faq-question collapsed"
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
                  <p class="fs-5 desc">
                    Clicca qui e inizia a scrivere. Veritatis et quasi
                    architecto beatae vitae dicta sunt explicabo nemo enim ipsam
                    voluptatem quia voluptas sit aspernatur aut odit aut fugit
                    sed quia consequuntur magni dolores eos qui ratione
                    voluptatem sequi nesciunt.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="accordion mb-3" id="accreditamento">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button faq-question collapsed"
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
              data-bs-parent="#accreditamento"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    Clicca qui e inizia a scrivere. Veritatis et quasi
                    architecto beatae vitae dicta sunt explicabo nemo enim ipsam
                    voluptatem quia voluptas sit aspernatur aut odit aut fugit
                    sed quia consequuntur magni dolores eos qui ratione
                    voluptatem sequi nesciunt.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <h2 class="title_section faq_title layout_padding">Gestione delle Richieste</h2>
        <div class="accordion mb-3" id="requestsAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button faq-question collapsed"
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
                  <p class="fs-5 desc">
                    Clicca qui e inizia a scrivere. Veritatis et quasi
                    architecto beatae vitae dicta sunt explicabo nemo enim ipsam
                    voluptatem quia voluptas sit aspernatur aut odit aut fugit
                    sed quia consequuntur magni dolores eos qui ratione
                    voluptatem sequi nesciunt.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="accordion mb-3" id="richiestePrenotazioni">
          <div class="accordion-item">
            <h2 class="accordion-header">
              <button
                class="accordion-button faq-question collapsed"
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
              data-bs-parent="#richiestePrenotazioni"
            >
              <div class="accordion-body row row-gap-5">
                <div class="col-12 info">
                  <p class="fs-5 desc">
                    Clicca qui e inizia a scrivere. Veritatis et quasi
                    architecto beatae vitae dicta sunt explicabo nemo enim ipsam
                    voluptatem quia voluptas sit aspernatur aut odit aut fugit
                    sed quia consequuntur magni dolores eos qui ratione
                    voluptatem sequi nesciunt.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script>
      document
        .getElementById("faqSearch")
        .addEventListener("input", function () {
          const searchTerm = this.value.toLowerCase();
          const questions = document.querySelectorAll(".faq-question");

          questions.forEach((questionBtn) => {
            const questionText = questionBtn.textContent.toLowerCase();
            const accordionItem = questionBtn.closest(".accordion-item");
            if (questionText.includes(searchTerm)) {
              accordionItem.style.display = "";
            } else {
              accordionItem.style.display = "none";
            }
          });
        });
    </script>


    
        <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

    
        <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
