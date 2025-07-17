<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign storeUrl = RequestParameters.url />
<#assign course = siteItemService.getSiteItem(storeUrl) />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}" >
<#include "/templates/web/fragments/head.ftl">
<body>
    <@crafter.body_top/>
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">

    <div
      class="banner_section banner_catalogo layout_padding d-flex align-items-center"
    >
      <img class="banner_img" src="static-assets/assets/catalogo.png">
      <div class="container">
        <h1 class="best_taital text-center dark p-0">Catalogo Servizi</h1>
      </div>
    </div>
    <!--
     <div class="container-fluid">
        <div class="row px-xl-4">
            <div class="col-12">
                <nav class="breadcrumb bg-light mb-30">
                    <a class="breadcrumb-item" href="index">Home</a>
                    <a class="breadcrumb-item" href="/catalog">Services</a>
                    <#if servicename?has_content>
                        <span class="breadcrumb-item active">${servicename}</span>
                    <#else>
                        <span class="breadcrumb-item active">Detail</span>
                    </#if>
                </nav>
            </div>
        </div>
    </div>
    -->
    
    <style>
        .breadcrumb {
          font-size: 0.875rem;
        }
        .breadcrumb-item + .breadcrumb-item::before {
          content: ">";
          color: #6c757d; 
          padding: 0 0.5rem;
        }
    </style>
    
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item ms-2"><a href="/">Home</a></li>
          <li class="breadcrumb-item"><a href="/catalog">Servizi</a></li>
          <li class="breadcrumb-item active" aria-current="page">${course.name_s?default("Nessun nome")}</li>
        </ol>
    </nav>

    
    <div class="toast-container position-fixed top-0 end-0 p-3">
        <div id="error-toast" class="toast bg-danger text-white" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
                <strong class="me-auto">Error</strong>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body" id="toast-message"></div>
        </div>
    </div>
    <div class="toast-container position-fixed top-0 end-0 p-3">
        <div id="success-toast" class="toast bg-success text-white" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
                <strong class="me-auto">Success</strong>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body" id="toast-s-message"></div>
        </div>
    </div>
   
    <#include "/templates/web/components/product-detail.ftl"> 
    <!-- <#include "/templates/web/components/product-carousel.ftl"> -->
    
    <#include "/templates/web/fragments/footer.ftl">
    <#include "/templates/web/fragments/scripts.ftl">
    
    <!-- Bootstrap JS (Required for Toasts) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        document.getElementById("add-order").addEventListener("click", async function (event) {
            event.preventDefault();
        
            let productCode = document.getElementById("productCode").innerText;
            let productName = document.getElementById("productName").innerText;
            let productPrice = document.getElementById("productPrice").innerText;
            let productQty = document.getElementById("productQty").value;
            let cup = document.getElementById("cup").innerHTML;
            let agevolazione = (document.getElementById("agevolazione").innerText)=="true";
            let itemUrl = document.getElementById("itemUrl").innerHTML;
            let partnerId = "67dd8279c70ba0680bdc849d";//document.getElementById("partnerId").innerHTML; //
            
            
            

            let clientId = null;
            
            let crafterVadinUser = localStorage.getItem("crafterVadinUser");

            if (crafterVadinUser) {
                let userData = JSON.parse(crafterVadinUser);
                clientId = userData._id;
            } else {
                console.log("No crafterVadinUser found in localStorage");
            }
            
            //clientId="67ae767f5456b36b1e6f3988";
            
            const toastMessage = document.getElementById('toast-message');
            const toastSuccessMessage = document.getElementById('toast-s-message');
            const errorToast = new bootstrap.Toast(document.getElementById('error-toast'));
            const successToast = new bootstrap.Toast(document.getElementById('success-toast'));
            
            //https://api.shortcut.uno
            fetch('https://api.shortcut.uno/v1/Ideale-request/request', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ productCode, productName,productPrice,productQty,clientId,cup,agevolazione,itemUrl,partnerId })
            })
            .then(response => response.json())
            .then(data => {
                if (data) {
                    toastSuccessMessage.textContent = "Order Placed Successfully!";
                    successToast.show();
                } else {
                    toastMessage.textContent = "Unable to place order at the moment!";
                    errorToast.show();
                }
            })
            .catch(error => {
                toastMessage.textContent = "Unable to place order at the moment!";
                errorToast.show();
            });
        });
    </script>
    <@crafter.body_bottom/>
</body>
</html>
