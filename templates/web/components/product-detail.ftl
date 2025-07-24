<#import "/templates/system/common/crafter.ftl" as crafter />

<!--
<#assign name = RequestParameters.name?default("") />
<#assign price = RequestParameters.price?default(0) />
<#assign gdpr = (RequestParameters.gdpr?default("false") == "true") />
<#assign privacy = (RequestParameters.privacy?default("false") == "true") />
<#assign code = RequestParameters.pid?default("Nessun codice") />
<#assign cup = RequestParameters.cup?default("Nessuna CUP") />
<#assign facilitation = (RequestParameters.facilitation?default("false") == "true")?string("Possibile", "Non Possibile") />
<#assign itemUrl = RequestParameters.item />
<#assign partnerId = RequestParameters.partnerId?default("") />
<#assign image = RequestParameters.image?default("https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-1.jpeg") />
<#assign description = RequestParameters.description?default("Nessuna descrizione") />
<#assign notes = RequestParameters.notes?default("Nessuna nota") />
<#assign subcategoryData = siteItemService.getSiteItem(content.subcategory_o)>
-->

<#assign storeUrl = RequestParameters.url />
<#assign course = siteItemService.getSiteItem(storeUrl) />

    <div class="container row mx-auto">
      <h4 class="text-primary">${course.name_s?default("Nessun nome")}</h4>
      <p class="text-muted small">Codice: ${course.codice_s?default("-----")}</p>
      <div class="col-2">
        <img src="${course.image_s?default("https://thumb.ac-illust.com/b1/b170870007dfa419295d949814474ab2_t.jpeg")}" style="width: 100%;" />
      </div>
      <div class="col-10">
        <dl class="row">
          <dt class="col-sm-2 text-primary fw-bold">Descrizione</dt>
          <dd class="col-sm-10">${course.descrizione_html?default("Nessun descrizione")}</dd>
          <dt class="col-sm-2 text-primary fw-bold">Costo</dt>
          <dd class="col-sm-10">${course.costo_s?default("0,00")}€</dd>
          <dt class="col-sm-2 text-primary fw-bold">Agevolazione</dt>
          <dd class="col-sm-10">${course.agevolazione_b?default(false)?string("Possibile", "Non Possibile")}</dd>
        <dt class="col-sm-2 text-primary fw-bold">CUP</dt>
          <dd class="col-sm-10">${course.cup_s?default("Nessun CUP")}</dd>
        </dl>
      </div>
    </div>
    
    <!-- Parte destra: quantità + bottone -->
    <div class="d-flex flex-column align-items-end me-5 mb-3">
      <div class="input-group quantity d-flex align-items-center mb-3 justify-content-end">
        <button id="decrease" style="height: 16px; width: 20px;" class="btn btn-secondary btn-sm me-2 d-flex align-items-center justify-content-center">-</button>
        <span style="width: 50px; text-align: center;" id="quantity" class="text-dark">1</span>
        <button id="increase" style="height: 16px; width: 20px;" class="btn btn-secondary btn-sm ms-2 d-flex align-items-center justify-content-center">+</button>
      </div>
      <button class="btn btn-secondary text-white rounded-pill px-4" onclick="makeOrder()">ORDINA</button>
    </div>


<!--
<div class="row mx-4 mx-xl-5">
    <div class="mb-5 mt-3 mx-3">
      <div class="row align-items-center pr-4">
        
        <h6 class="fw-bold mb-1" style="color: var(--primary-active);">${content.name_s}</h6>
        <small class="text-muted d-block mb-2 text-uppercase">Codice prodotto</small>
        <div class="col-md-8 d-flex">
       
          <img src="https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-1.jpeg" alt="Servizio" class="me-3" style="width:180px; height:100px;">
          
      
          <div>
          
            <#if content?? && content?has_content>
                <#if content.costo_s?has_content>
                  <p>${content.costo_s}</p>
                </#if>
              <p>${content.name_s}</p>
            <#else>
              <p>No content found for internal-name: ${itemUrl}</p>
            </#if>
            <#if contentModel.informazionisulcosto_html?? && contentModel.informazionisulcosto_html?has_content>
                <p class="text-primary fw-bold mb-2" style="font-size: 0.85rem;">DESCRIZIONE PRODOTTO</p>
                <p class="text-primary" style="font-size: 0.85rem;">
                  <p>${contentModel.informazionisulcosto_html}</p>
                </p>
            </#if>
            <div class="mt-2">
              <span class="me-2 text-primary" style="font-size: 0.75rem;">TAG1</span>
              <span class="me-2 text-primary" style="font-size: 0.75rem;">TAG2</span>
              <span class="me-2 text-primary" style="font-size: 0.75rem;">TAG3</span>
              <span class="me-2 text-primary" style="font-size: 0.75rem;">TAG4</span>
            </div>
          </div>
        </div>
    
        <div class="col-md-4 d-flex flex-column align-items-end">
          <div class="input-group quantity d-flex align-items-center mb-3 justify-content-end">
            <button id="decrease" style="height: 16px; width: 20px;" class="btn btn-secondary btn-sm me-2 d-flex align-items-center justify-content-center">-</button>
            <span style="width: 50px; text-align: center;" id="quantity" class="text-dark">1</span>
            <button id="increase" style="height: 16px; width: 20px;" class="btn btn-secondary btn-sm ms-2 d-flex align-items-center justify-content-center">+</button>
          </div>
          <button class="btn btn-secondary text-white rounded-pill px-4">AGGIUNGI AL CARRELLO</button>
        </div>
-->
        <script>
          const quantitySpan = document.getElementById('quantity');
          const increaseBtn = document.getElementById('increase');
          const decreaseBtn = document.getElementById('decrease');
        
          let quantity = 1;
        
          increaseBtn.addEventListener('click', () => {
            quantity++;
            quantitySpan.textContent = quantity;
          });
        
          decreaseBtn.addEventListener('click', () => {
            if (quantity > 1) {
              quantity--;
              quantitySpan.textContent = quantity;
            }
          });
          
          async function makeOrder() {
            const user = JSON.parse(localStorage.getItem('crafterVadinUser'));
            const body = {
              'productCode': '${course.codice_s!""}',
              'cup': '${course.cup_s!""}',
              'agevolazione': ${course.agevolazione_b?default(false)?string("true", "false")},
              'productName': '${course.name_s!""}',
              'partnerId': '${course.partnerId_s!""}',
              'productQty': '' + quantity,
              'productPrice': '${course.costo_s!"0"}',
              'clientId': user._id,
              'itemUrl': '${storeUrl!""}'
            };
            const url = 'https://api.shortcut.uno/v1/Ideale-request/request';
            const token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJvcmdhbml6YXRpb25JZCI6IjY3YWM3OGI2NDFmM2U0M2Y5MzQ3MzgxMCIsInVzZXJfbmFtZSI6Intsb2dpblJvbGU9bnVsbCwgaWQ9Njc4NDYwZTM1MDlhYzM0NjRkNmI2MjEwLCB1c2VybmFtZT1wcm9qZWN0LmNhZ2VAZ21haWwuY29tLCBkZXZpY2VUeXBlPW51bGwsIGRldmljZU5hbWU9bnVsbCwgc2Vzc2lvbklkPW51bGwsIHByb2plY3RJZD02ODY1MmM1MTFmN2Y2NDcyYTY3MGU0YTIsIG9yZ2FuaXphdGlvbklkPTY3YWM3OGI2NDFmM2U0M2Y5MzQ3MzgxMCwgcmVzdHJpY3Rpb25zPXtvcmdhbml6YXRpb25JZD02N2FjNzhiNjQxZjNlNDNmOTM0NzM4MTAsIGRvbWFpbnM9W2h0dHBzOi8vdm9jYWxjaGF0Ym90LmRlZXByZWFsaXR5LmNsb3VkLCBodHRwOi8vNTEuNjguMTczLjIwMSwgaHR0cHM6Ly9kZW1vLnNob3J0Y3V0LnVubywgaHR0cDovL2RlbW8uc2hvcnRjdXQudW5vLCBodHRwczovL2lkZWFsZS5zaG9ydGN1dC51bm8sIGh0dHA6Ly9pZGVhbGUuc2hvcnRjdXQudW5vLCBodHRwOi8vNTEuNjguMTczLjIwMTo4MDgwLCBodHRwOi8vNTEuNjguMTczLjIwMTo5MDgxLCBodHRwOi8vbG9jYWxob3N0OjUwMDAsIGh0dHA6Ly9sb2NhbGhvc3QsIDE3Mi4yMS4wLjEsIGxvY2FsaG9zdDo1MDAwLCBsb2NhbGhvc3Q6ODA4MCwgbG9jYWxob3N0OjkwODAsIGlkZWFsZS5zaG9ydGN1dC51bm8sIDUxLjY4LjE3My4yMDEsIDUxLjY4LjE3My4yMDE6ODA4MCwgNTEuNjguMTczLjIwMTo5MDgxLCBsb2NhbGhvc3Q6NTE3MywgZGVtby5zaG9ydGN1dC51bm8sIGh0dHBzOi8vYXBpLnNob3J0Y3V0LnVubywgaHR0cDovLzUxLjY4LjE3My4yMDEsIGh0dHA6Ly8xMjcuMC4wLjEsIGFwaS5zaG9ydGN1dC51bm8sIGh0dHBzOi8vYXBpLnNob3J0Y3V0LnVubywgbG9jYWxob3N0LCAxMjcuMC4wLjFdfSwgZW5hYmxlZD10cnVlLCBhY2NvdW50Tm9uRXhwaXJlZD10cnVlLCBjcmVkZW50aWFsc05vbkV4cGlyZWQ9dHJ1ZSwgYWNjb3VudE5vbkxvY2tlZD10cnVlLCBhdXRob3JpdGllcz1be2F1dGhvcml0eT1HQVRFV0FZX1NFUlZFUlNJREV9XX0iLCJzY29wZSI6WyJyZWFkIiwid3JpdGUiXSwicmVzdHJpY3Rpb25zIjp7Im9yZ2FuaXphdGlvbklkIjoiNjdhYzc4YjY0MWYzZTQzZjkzNDczODEwIiwiZG9tYWlucyI6WyJodHRwczovL3ZvY2FsY2hhdGJvdC5kZWVwcmVhbGl0eS5jbG91ZCIsImh0dHA6Ly81MS42OC4xNzMuMjAxIiwiaHR0cHM6Ly9kZW1vLnNob3J0Y3V0LnVubyIsImh0dHA6Ly9kZW1vLnNob3J0Y3V0LnVubyIsImh0dHBzOi8vaWRlYWxlLnNob3J0Y3V0LnVubyIsImh0dHA6Ly9pZGVhbGUuc2hvcnRjdXQudW5vIiwiaHR0cDovLzUxLjY4LjE3My4yMDE6ODA4MCIsImh0dHA6Ly81MS42OC4xNzMuMjAxOjkwODEiLCJodHRwOi8vbG9jYWxob3N0OjUwMDAiLCJodHRwOi8vbG9jYWxob3N0IiwiMTcyLjIxLjAuMSIsImxvY2FsaG9zdDo1MDAwIiwibG9jYWxob3N0OjgwODAiLCJsb2NhbGhvc3Q6OTA4MCIsImlkZWFsZS5zaG9ydGN1dC51bm8iLCI1MS42OC4xNzMuMjAxIiwiNTEuNjguMTczLjIwMTo4MDgwIiwiNTEuNjguMTczLjIwMTo5MDgxIiwibG9jYWxob3N0OjUxNzMiLCJkZW1vLnNob3J0Y3V0LnVubyIsImh0dHBzOi8vYXBpLnNob3J0Y3V0LnVubyIsImh0dHA6Ly81MS42OC4xNzMuMjAxIiwiaHR0cDovLzEyNy4wLjAuMSIsImFwaS5zaG9ydGN1dC51bm8iLCJodHRwczovL2FwaS5zaG9ydGN1dC51bm8iLCJsb2NhbGhvc3QiLCIxMjcuMC4wLjEiXX0sIl9pZCI6IjY3ODQ2MGUzNTA5YWMzNDY0ZDZiNjIxMCIsInByb2plY3RJZCI6IjY4NjUyYzUxMWY3ZjY0NzJhNjcwZTRhMiIsImF1dGhvcml0aWVzIjpbIkdBVEVXQVlfU0VSVkVSU0lERSJdLCJqdGkiOiI3ODdkYjZkNS1jNTk5LTRmZmQtYmNhZS1lYzZmMjFmNWJjMjgiLCJjbGllbnRfaWQiOiJJZGVhbGVfUHJvamVjdF9TZXJ2ZXJfU2lkZS0xNzUxNDYwOTQ1MzY0XzEifQ.gEOwwURfW7ynQ5gHyPhZZeXkDly8KxXZcbcmwsLkf6o';
            const response = await fetch(url, {
              method: 'POST',
              headers: {
                'Authorization': 'Bearer ' + token,
                'Content-Type': 'application/json'
              },
              body: JSON.stringify(body)
            });
            if (response.ok) {
                window.location.href = '/order-confirmed';
            }
          }
        </script>

      </div>
    </div>
</div>


<!--
<div class="container-fluid pb-5 d-none">
        <div class="row px-xl-5">
            <div class="col-lg-5 mb-30">
                <div id="product-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="w-100 h-100" src="/static-assets/img/default/product-default.png" alt="Image">
                        </div>
                        <div class="carousel-item">
                            <img class="w-100 h-100" src="/static-assets/img/default/product-default.png" alt="Image">
                        </div>
                        <!--<div class="carousel-item">
                            <img class="w-100 h-100" src="static-assets/img/product-3.jpg" alt="Image">
                        </div>
                        <div class="carousel-item">
                            <img class="w-100 h-100" src="static-assets/img/product-4.jpg" alt="Image">
                        </div>-->
                        <!--
                    </div>
                    <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                        <i class="fa fa-2x fa-angle-left text-dark"></i>
                    </a>
                    <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                        <i class="fa fa-2x fa-angle-right text-dark"></i>
                    </a>
                </div>
            </div>

            <div class="col-lg-7 h-auto mb-30">
                <div class="h-100 p-30">
                <!--
                    <h3 id="productName">${title}</h3>
                    <div class="d-flex mb-3">
                        
                        <small class="pt-1" id="productCode">${productId}</small>
                        <small class="pt-1" style="visibility: hidden" id="agevolazione">${agevolazione}</small>
                        <small class="pt-1" style="visibility: hidden" id="itemUrl">${itemUrl}</small>
                        <small class="pt-1" style="visibility: hidden" id="partnerId">${partnerId}</small>
                    </div>
                    <div class="d-flex mb-3">
                        <small class="pt-1">CUP : </small> <small class="pt-1" id="cup">${cup}</small>
                    </div>
                    <h3 class="font-weight-semi-bold mb-4" id="productPrice">EUR ${price}</h3>
                    <p class="mb-4">Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit
                        clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea
                        Nonumy</p>
                    <div class="d-flex mb-3">
                        <strong class="text-dark mr-3">Sizes:</strong>
                        <form>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="size-1" name="size">
                                <label class="custom-control-label" for="size-1">XS</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="size-2" name="size">
                                <label class="custom-control-label" for="size-2">S</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="size-3" name="size">
                                <label class="custom-control-label" for="size-3">M</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="size-4" name="size">
                                <label class="custom-control-label" for="size-4">L</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="size-5" name="size">
                                <label class="custom-control-label" for="size-5">XL</label>
                            </div>
                        </form>
                    </div>
                    <div class="d-flex mb-4">
                        <strong class="text-dark mr-3">Colors:</strong>
                        <form>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="color-1" name="color">
                                <label class="custom-control-label" for="color-1">Black</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="color-2" name="color">
                                <label class="custom-control-label" for="color-2">White</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="color-3" name="color">
                                <label class="custom-control-label" for="color-3">Red</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="color-4" name="color">
                                <label class="custom-control-label" for="color-4">Blue</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" class="custom-control-input" id="color-5" name="color">
                                <label class="custom-control-label" for="color-5">Green</label>
                            </div>
                        </form>
                    </div>-->
                    <!--
                    <div class="d-flex align-items-center mb-4 pt-2">
                        <div class="input-group quantity mr-3" style="width: 130px;">
                            <div class="input-group-btn">
                                <button class="btn btn-primary btn-minus">
                                    <i class="fa fa-minus"></i>
                                </button>
                            </div>
                            <input type="text" class="form-control bg-secondary border-0 text-center" id="productQty" value="1">
                            <div class="input-group-btn">
                                <button class="btn btn-primary btn-plus">
                                    <i class="fa fa-plus"></i>
                                </button>
                            </div>
                        </div>
                        </div>
                            <div class="d-flex align-items-center mb-4 pt-2">
                            
                                <#if privacy>
                                    <div class="form-check mb-2">
                                        <input type="checkbox" id="termsCheckbox" class="form-check-input">
                                        <label for="termsCheckbox" class="form-check-label">I accept the <a href="/privacy#tac" target="_blank">Terms and Conditions</a></label>
                                    </div>
                                </#if>
                                </div>
                                <div class="d-flex align-items-center mb-4 pt-2">
                                <#if gdpr>
                                    <div class="form-check">
                                        <input type="checkbox" id="gdprCheckbox" class="form-check-input">
                                        <label for="gdprCheckbox" class="form-check-label">
                                            I accept the 
                                            <a href="/privacy#gdpr" target="_blank">GDPR Privacy Policy</a>
                                        </label>
                                    </div>
                                </#if>
                            
                        </div>
                        
                        <button id="add-order" class="btn btn-primary px-3" disabled><i class="fa fa-shopping-cart mr-1"></i> Order Item </button>
                    </div>
                    <!--<div class="d-flex pt-2">
                        <strong class="text-dark mr-2">Share on:</strong>
                        <div class="d-inline-flex">
                            <a class="text-dark px-2" href="">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a class="text-dark px-2" href="">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a class="text-dark px-2" href="">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a class="text-dark px-2" href="">
                                <i class="fab fa-pinterest"></i>
                            </a>
                        </div>
                    </div> -->
                    <!--
                </div>
            </div>
        </div>
        <div class="row pl-4 px-xl-5 w-100">
            <div class="">
                <div class="pb-5">
                  <ul class="nav nav-tabs mb-4">
                    <li class="nav-item">
                      <a class="nav-link active" data-bs-toggle="tab" href="#tab-pane-1">Descrizione</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#tab-pane-2">Informazioni</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#tab-pane-3">Recensioni</a>
                    </li>
                  </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tab-pane-1">
                            <p>
                                <#if contentModel.descrizione_html?? && contentModel.descrizione_html?has_content>
                                    ${contentModel.descrizione_html}
                                </#if>
                            </p>
                        </div>
                        <div class="tab-pane fade" id="tab-pane-2">
                            <!--
                            <#include "product-detail-description-skills.ftl">
                            <#include "product-detail-desc-test.ftl">
                            -->
                            <!--
                            <#include "product-detail-desc-consulenza.ftl">
                        </div>
                        <div class="tab-pane fade" id="tab-pane-3">
                            <div class="row">
                                <div class="col-md-6 reviews-list" style="overflow: scroll; height: 360px;">
                                    <div class="media mb-4">
                                        <img src="static-assets/img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1 rounded-5" style="width: 45px;">
                                        <div class="media-body">
                                            <h6 class="text-dark">John Doe<small class="ml-4" style="color:grey;"> 01 Jan 2045 </small></h6>
                                            <div class="text-primary mb-2">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="far fa-star"></i>
                                            </div>
                                            <p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                                        </div>
                                    </div>
                                    <div class="media mb-4">
                                        <img src="static-assets/img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1 rounded-5" style="width: 45px;">
                                        <div class="media-body">
                                            <h6 class="text-dark">Mario Rossi<small class="ml-4" style="color:grey;"> 01 Jan 2045 </small></h6>
                                            <div class="text-primary mb-2">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="far fa-star"></i>
                                            </div>
                                            <p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                                        </div>
                                    </div>
                                    <div class="media mb-4">
                                        <img src="static-assets/img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1 rounded-5" style="width: 45px;">
                                        <div class="media-body">
                                            <h6 class="text-dark">Mario Rossi<small class="ml-4" style="color:grey;"> 01 Jan 2045 </small></h6>
                                            <div class="text-primary mb-2">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="far fa-star"></i>
                                            </div>
                                            <p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                                        </div>
                                    </div>
                                    <div class="media mb-4">
                                        <img src="static-assets/img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1 rounded-5" style="width: 45px;">
                                        <div class="media-body">
                                            <h6 class="text-dark">Mario Rossi<small class="ml-4" style="color:grey;"> 01 Jan 2045 </small></h6>
                                            <div class="text-primary mb-2">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="far fa-star"></i>
                                            </div>
                                            <p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h4 class="mb-4 text-dark">Scrivi una recensione</h4>
                                <form id="reviewForm">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" placeholder="Il tuo nome">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="email" placeholder="La tua email">
                                    </div>
                                    <div class="form-group">
                                        <textarea id="message" cols="30" rows="5" class="form-control" placeholder="Il tuo messaggio"></textarea>
                                    </div>
                                    
                                    <div class="d-flex my-3">
                                        <div id="stars" class="text-primary" style="user-select:none;">
                                            <!-- Stelle cliccabili -->
                                            <!--
                                            <i class="far fa-star" style="cursor: pointer;" data-index="1"></i>
                                            <i class="far fa-star" style="cursor: pointer;" data-index="2"></i>
                                            <i class="far fa-star" style="cursor: pointer;" data-index="3"></i>
                                            <i class="far fa-star" style="cursor: pointer;" data-index="4"></i>
                                            <i class="far fa-star" style="cursor: pointer;" data-index="5"></i>
                                        </div>
                                    </div>
                                
                                    <div class="form-group mb-0 d-flex justify-content-end">
                                        <input type="submit" value="CONFERMA" style="background-color: var(--secondary-active); border:none;" class="btn btn-primary px-3 rounded">
                                    </div>
                                </form>
                                <script>
                                    const stars = document.querySelectorAll('#stars i');
                                    let selectedStars = 0;
                                
                                    stars.forEach(star => {
                                        star.addEventListener('click', () => {
                                            selectedStars = parseInt(star.getAttribute('data-index'));
                                            // Aggiorna visualmente le stelle
                                            stars.forEach((s, index) => {
                                                s.classList.remove('fas', 'far');
                                                s.classList.add(index < selectedStars ? 'fas' : 'far');
                                            });
                                
                                            // Salva il valore nel localStorage
                                            localStorage.setItem('rating', selectedStars);
                                        });
                                    });
                                
                                    document.getElementById('reviewForm').addEventListener('submit', function(e) {
                                        e.preventDefault(); // Previene il submit per test
                                        console.log('Recensione salvata con', selectedStars, 'stelle');
                                        // Qui puoi anche salvare nome, email e messaggio se vuoi
                                    });
                                </script>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    -->