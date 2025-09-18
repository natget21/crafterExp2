<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign storeUrl = RequestParameters.storeUrl?default("") />

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
            <#assign course = siteItemService.getSiteItem(storeUrl)?default("") />
            <#if course?has_content>
                <#assign paths = [
                    {"name": "Catalogo", "link": "/catalog"},
                    {"name": course.name_s?default("Nessun nome"), "link": ""}
                ] />
                <#include "/templates/web/components/breadcrumb.ftl">
                <#assign handleQuantity = course.quantity_b?default(false) />
                <div class="container row mx-auto mb-3">
                  <h4 class="text-primary">${course.name_s?default("Nessun nome")}</h4>
                  <p class="text-muted small">Codice: ${course.codiceprodotto_s?default("")}${course.codice_s?default("")}</p>
                  <div class="col-sm-3 col-12">
                    <img src="${course.image_s?has_content?then(assetsFolder + '/' + course.image_s, '/static-assets/img/ideale.png')}" style="width: 100%;" />
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
                      
                        <dt class="col-sm-2 text-primary fw-bold">Azienda</dt>
                        <dd id="${course.partnerId_s?default("no-partner")}" class="col-sm-10">------</dd>

                        <#if course.links_o??>
                            <dt class="col-sm-2 text-primary fw-bold">Links</dt>
                            <dd class="col-sm-10">
                                <#list course.links_o.item as item>
                                    <a class="btn btn-primary rounded" target="_blank" href="${item.link_t?default("#")}">${item.label_s?default("clicca qui")}</a>
                                </#list>
                            </dd>
                        </#if>
                        
                        <#if course.linkDemo_t?has_content>
                            <dt class="col-sm-2 text-primary fw-bold">Links</dt>
                            <dd class="col-sm-10">
                                <a class="btn btn-primary rounded" target="_blank" href="${course.linkDemo_t?default("#")}">${course.labelDemo_s?default("clicca qui")}</a>
                            </dd>
                        </#if>
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
                <h5 class="container text-center my-3">Nessun corso trovato.</h5>
            </#if>
        <#else>
            <h5 class="container text-center my-3">Nessun corso trovato.</h5>
        </#if>
        
        
        <#if course?has_content>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                const user = JSON.parse(localStorage.getItem("crafterVadinUser"));
                if(!user) {
                    const orderHandler = document.getElementById("orderHandler");
                    orderHandler.classList.remove("d-flex");
                    orderHandler.classList.add("d-none");
                }
                loadPartner();
            });
            
            async function loadPartner() {
                const dd = document.getElementById("${course.partnerId_s?default("dummy")}");
                if(!dd) { return; }
                const url = "https://api.shortcut.uno/v1/Ideale-partner/findOne?partnerId=${course.partnerId_s?default("dummy")}";
                const headers = { "Authorization": "Bearer ${token}" };
                const response = await fetch(url, { method: "GET", headers });
                if(response.ok) {
                    const partner = await response.json();
                    dd.innerText = partner.partnerAzienda ?? "Nessun Partner";
                }
                else { span.innerText = "Nessun Partner"; }
            }
            
            const quantitySpan = document.getElementById('quantity');
            const increaseBtn = document.getElementById('increase');
            const decreaseBtn = document.getElementById('decrease');
            let quantity = 1;
            
            increaseBtn.addEventListener("click", () => {
                quantity++;
                quantitySpan.textContent = quantity;
            });
            
            decreaseBtn.addEventListener("click", () => {
                if(quantity > 1) {
                    quantity--;
                    quantitySpan.textContent = quantity;
                }
            });
            
            async function makeOrder() {
                const user = JSON.parse(localStorage.getItem('crafterVadinUser'));
                const url = "https://api.shortcut.uno/v1/Ideale-request/request";
                const body = {
                    <#if course.deliveryLink?? && course.deliveryDescription?? && course.deliveryLicenseKey?? />
                        'deliveryData': {
                            'deliveryLink': '${course.deliveryLink}',
                            'description': '${course.deliveryDescription}',
                            'licenseKey': '${course.deliveryLicenseKey}',
                        },
                    </#if>

                    
                    'productCode': '${course.productid_s?default("")}',
                    'cup': '${course.cup_s?default("")}',
                    'agevolazione': ${course.agevolazione_b?default(false)?string("true", "false")},
                    'productName': '${course.name_s?default("")}',
                    'partnerId': '${course.partnerId_s?default("")}',
                    'productQty': '' + quantity,
                    'productPrice': '${course.costo_s?default("0")}',
                    'clientId': user._id,
                    'itemUrl': '${storeUrl?default("")}'
                };
                
                const response = await fetch(url, {
                  method: "POST",
                  headers: {
                    "Authorization": "Bearer ${token}",
                    "Content-Type": 'application/json'
                  },
                  body: JSON.stringify(body)
                });
                console.log("response", response);
                if (response.ok) {
                    window.location.href = '/order-confirmed';
                }
            }
        </script>
        </#if>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>