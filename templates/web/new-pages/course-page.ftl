<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign storeUrl = RequestParameters.storeUrl?default("") />
<#assign course = siteItemService.getSiteItem(storeUrl) />
<#assign handleQuantity = course.quantity_b?default(false) />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <div class="banner_section banner_catalogo layout_padding d-flex align-items-center">
          <img class="banner_img" src="static-assets/assets/catalogo.png">
          <div class="container">
            <h1 class="best_taital text-center dark p-0">Corso</h1>
          </div>
        </div>
        
        <#if storeUrl?has_content>
            <#assign course = siteItemService.getSiteItem(storeUrl) />
            <#if course?has_content>
                <div class="container row mx-auto">
                  <h4 class="text-primary">${course.name_s?default("Nessun nome")}</h4>
                  <p class="text-muted small">Codice: ${course.codiceprodotto_s?default("")}${course.codice_s?default("")}</p>
                  <div class="col-sm-3 col-12">
                    <img src="${course.image_s?default("https://thumb.ac-illust.com/b1/b170870007dfa419295d949814474ab2_t.jpeg")}" style="width: 100%;" />
                  </div>
                  <div class="col-sm-9 col-12">
                    <dl class="row">
                      <dt class="col-sm-2 text-primary fw-bold">Descrizione</dt>
                      <dd class="col-sm-10">${course.descrizione_html?default("Nessun descrizione")}</dd>
                      
                      <dt class="col-sm-2 text-primary fw-bold">Obiettivo</dt>
                      <dd class="col-sm-10">${course.obiettivo_html?default("Nessun obiettivo")}</dd>
                      
                      <dt class="col-sm-2 text-primary fw-bold">Costo</dt>
                      <dd class="col-sm-10">${course.costo_s?default("0,00")}€</dd>
                      <dt class="col-sm-2 text-primary fw-bold">Agevolazione</dt>
                      <dd class="col-sm-10">${course.agevolazione_b?default(false)?string("Possibile", "Non Possibile")}</dd>
                    <dt class="col-sm-2 text-primary fw-bold">CUP</dt>
                      <dd class="col-sm-10">${course.cup_s?default("Nessun CUP")}</dd>
                    </dl>
                  </div>
                </div>
    
                <div id="orderHandler" class="d-flex flex-column align-items-end me-5 mb-3">
                    <#if handleQuantity>
                      <div class="input-group quantity d-flex align-items-center mb-3 justify-content-end">
                        <button id="decrease" style="height: 16px; width: 20px;" class="btn btn-secondary btn-sm me-2 d-flex align-items-center justify-content-center">-</button>
                        <span style="width: 50px; text-align: center;" id="quantity" class="text-dark">1</span>
                        <button id="increase" style="height: 16px; width: 20px;" class="btn btn-secondary btn-sm ms-2 d-flex align-items-center justify-content-center">+</button>
                      </div>
                    </#if>
                  
                  <button class="btn btn-secondary text-white rounded-pill px-4" onclick="makeOrder()">ORDINA</button>
                </div>
            <#else>
                <h5>Nessun corso trovato.</h5>
            </#if>
        <#else>
            <h5>Nessun corso trovato.</h5>
        </#if>
        
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>