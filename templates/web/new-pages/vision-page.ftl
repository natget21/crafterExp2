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

                <div class="objectives_section">
                    <h2 class="title_section sub_title mb-4">
                        Obiettivi del progetto IDEALE
                    </h2>
                    <div class="objectives row row-gap-5">
                        <#assign objectives = [
                            { "title": "Matching", "description": "Connettere domanda e offerta in modo intelligente e rapido.", "icon": "" }
                        ] />
                        <#list objectives as objective>
                            <div class="d-flex flex-column col-12 col-md-6 col-lg-4">
                                <div class="obj d-flex gap-3">
                                    <p><strong>${title}</strong></p>
                                </div>
                                <p class="desc">${desccription}</p>
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