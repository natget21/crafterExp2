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
                <div class="mt-3">
                    <h2 class="title_section sub_title">
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
                <div class="mt-3">
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
                
                <!-- Servizi e Prodotti -->
                <div class="mt-3">
                
                    <h2 class="title_section sub_title">Servizi e Prodotti</h2>
                    <p>
                        La piattaforma offre un'ampia gamma di prodotti e servizi digitali pensati per facilitare l'adozione di tecnologie innovative, lo sviluppo delle competenze digitali, l'accesso ai finanziamenti e la creazione di reti collaborative tra aziende, startup, istituzioni ed Enti del Terzo settore. L'offerta si suddivide in due aree principali
                    </p>
                    <div class="accordion mt-2" id="servicesAccordion">
                        <#assign services = siteItemService.getSiteTree('/site/components/category', 1)>
                        <#if services?has_content>
                            <#list services.childItems as serviceItem>
                                <#assign id = "service-" + serviceItem_index />
                                <#assign service = siteItemService.getSiteItem(serviceItem.storeUrl) />
                                <#assign name = service.queryValue("name_s")?default("Nessun nome") />
                                <#assign description = service.queryValue("description_t")?default("Nessuna descrizione") />
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#${id}" aria-expanded="false" aria-controls="${id}">
                                            ${name}
                                        </button>
                                    </h2>
                                    <div id="${id}" class="accordion-collapse collapse" data-bs-parent="#servicesAccordion" style="">
                                        <div class="accordion-body">
                                            ${description}
                                        </div>
                                    </div>
                                </div>
                            </#list>
                        </#if>
                    </div>
                </div>
                
                
                <!-- Destinatari -->
                <div class="mt-3">
                    <h2 class="title_section sub_title">Destinatari</h2>
                    <#assign addressees = [
                        { "title": "Imprese", "image": "imprese.png" },
                        { "title": "Pubblica Amministrazione", "image": "pa.png" },
                        { "title": "Enti del Terzo Settore", "image": "terzo-settore.png" },
                        { "title": "Liberi Professionisti", "image": "freelance.png" }
                    ] />
                    <div class="row px-0 mt-3">
                        <#list addressees as addressee>
                            <div class="col-3">
                                <div style="heigth: 70px">
                                    <img src="/static-assets/assets/${addressee.image}" alt="${addressee.title}" style="width: 70px">
                                </div>
                                <p class="text-muted">${addressee.title}</p>
                            </div>
                        </#list>
                    </div>
                </div>
                
                <!-- Targets -->
                <div class="mt-3">
                    <h2 class="title_section sub_title">Settori Target</h2>
                    <#assign targets = [
                        { "title": "Cultura", "image": "cultura.png" },
                        { "title": "Turismo", "image": "turismo.png" },
                        { "title": "Sociale", "image": "sociale.png" }
                    ] />
                    <div class="row px-0 mt-3">
                        <#list targets as target>
                            <div class="col-3">
                                <div style="heigth: 70px">
                                    <img src="/static-assets/assets/${target.image}" alt="${target.title}" style="width: 70px">
                                </div>
                                <p class="text-muted">${target.title}</p>
                            </div>
                        </#list>
                    </div>
                </div>

                
                
            </div>
        </div>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>