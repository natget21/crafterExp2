<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
 
        <div class="content pb-5">
            <div class="banner_section banner_partners layout_padding d-flex align-items-center">
                <img class="banner_img" src="static-assets/assets/progetto.png">
                <div class="container">
                  <h1 class="best_taital text-center dark p-0">Visione</h1>
                </div>
            </div>

            <div class="container">
                <div class="marketing_section layout_padding">
                    <h2 class="marketing_title title_section">
                        IDEALE è il punto d'incontro tra tecnologia, innovazione e impatto sociale.
                    </h2>
                    <p>
                        Vogliamo costruire un ecosistema digitale dove imprese, pubbliche amministrazioni e terzo settore collaborano per progettare servizi intelligenti, inclusivi e sostenibili.
                    </p>
                </div>

                <!-- Obiettivi -->
                <div class="mt-2">
                    <h2 class="title_section sub_title mb-4">
                        Obiettivi del progetto IDEALE
                    </h2>
                    <div class="objectives row row-gap-5">
                        <#assign objectives = [
                            { "title": "Matching", "description": "Connettere domanda e offerta in modo intelligente e rapido.", "image": "matching.png" },
                            { "title": "Co-progettazione", "description": "Favorire la co-progettazione tra startup, PMI, PA, università e grandi imprese.", "image": "co-progettazione.png" },
                            { "title": "Digital Trasformation", "description": "Supportare la trasformazione digitale nei settori del turismo, cultura e sociale.", "image": "digital-trasformation.png" },
                            { "title": "Business models", "description": "Promuovere modelli di business sostenibili e collaborativi.", "image": "business-model.png" },
                            { "title": "Formazione innovativa", "description": "Innovare la formazione con tecnologie immersive e approcci esperienziali.", "image": "formazione-innovativa.png" },
                            { "title": "Certificare le competenze", "description": "Misurare e certificare le competenze digitali, anche nella PA.", "image": "certificare-le-competenze.png" }
                        ] />
                        <#list objectives as objective>
                            <div class="d-flex flex-column col-12 col-md-6 col-lg-4">
                                <div class="obj d-flex gap-3">
                                    <img class="obj_image" src="static-assets/assets/${objective.image}" alt="${objective.title}">
                                    <p><strong>${objective.title}</strong></p>
                                </div>
                                <p class="desc">${objective.description}</p>
                            </div>
                        </#list>
                    </div>
                </div>  
                
                <!-- Unicità -->
                <div class="mt-2">
                    <h2 class="title_section sub_title">Cosa rende IDEALE unico?</h2>
                    <p>Una piattaforma progettata per generare valore condiviso:</p>
                    <ul>
                        <li>
                            <p><strong>AI e VR</strong> per connettere bisogni e soluzioni in modo personalizzato</p>
                        </li>
                        <li>
                            <p><strong>Marketplace digitale</strong> per promuovere servizi innovativi</p>
                        </li>
                        <li>
                            <p><strong>Formazione immersiva</strong> e adattiva</p>
                        </li>
                        <li>
                            <p><strong>Strumenti di collaborazione real-time</strong>, come stanze virtuali e call for procurement</p>
                        </li>
                    </ul>
                </div>
                
                <!-- Prodotti e Servizi -->
                <div class="layout_padding services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0">
            
              <h2 class="services_section_title title_section">Prodotti e Servizi</h2>
        
              <p class="services_section_description mb-0 mt-3">La piattaforma offre un'ampia gamma di prodotti e servizi digitali pensati per facilitare l'adozione di tecnologie innovative, lo sviluppo delle competenze digitali, l'accesso ai finanziamenti e la creazione di reti collaborative tra aziende, startup, istituzioni ed Enti del Terzo settore. L'offerta si suddivide in due aree principali:</p>
        
            <!-- Prodotti digitali -->
            <div class="mt-5">
              <p class="title_section sub_title">Prodotti digitali</p>
              <div class="accordion" id="productsAccordion">
                  <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#productOne" aria-expanded="false" aria-controls="productOne">
                            E-services
                        </button>
                    </h2>
                    <div id="productOne" class="accordion-collapse collapse" data-bs-parent="#productsAccordion">
                      <div class="accordion-body">
                          Microservizi completi con interfaccia utente, pronti all'uso per il cliente finale
                      </div>
                    </div>
                  </div>
                  <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#productTwo" aria-expanded="false" aria-controls="productTwo">
                            API
                        </button>
                    </h2>
                    <div id="productTwo" class="accordion-collapse collapse" data-bs-parent="#productsAccordion">
                      <div class="accordion-body">
                          Interfacce di programmazione senza GUI, per l'integrazione diretta con altri sistemi
                      </div>
                    </div>
                  </div>
              </div>
            </div>
        
            <!-- Servizi digitali -->
            <div class="mt-5">
            
                <h2 class="services_section_title title_section">Prodotti e Servizi</h2>
                <p class="services_section_description mb-0 mt-3">
                    La piattaforma offre un'ampia gamma di prodotti e servizi digitali pensati per facilitare l'adozione di tecnologie innovative, lo sviluppo delle competenze digitali, l'accesso ai finanziamenti e la creazione di reti collaborative tra aziende, startup, istituzioni ed Enti del Terzo settore. L'offerta si suddivide in due aree principali
                </p>
                <div class="accordion" id="servicesAccordion">
                
                <div class="accordion-item">
                <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#serviceOne" aria-expanded="false" aria-controls="serviceOne">
                Test Before Invest
                </button>
                </h2>
                <div id="serviceOne" class="accordion-collapse collapse" data-bs-parent="#servicesAccordion" style="">
                <div class="accordion-body">
                Servizi che permettono alle aziende di esplorare e testare nuove tecnologie e soluzioni prima di effettuare investimenti, attraverso dimostrazioni pratiche, studi di fattibilità, proof-of-concept, test e validazione di soluzioni.
                </div>
                </div>
                </div>
                
                </div>
              
            </div>

                
                
            </div>
        </div>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>