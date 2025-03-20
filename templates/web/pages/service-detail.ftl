<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}" >
<#include "/templates/web/fragments/head.ftl">
<body>
    <@crafter.body_top/>
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">
    
    <#assign servicename = RequestParameters.service?default("") />
     <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-12">
                <nav class="breadcrumb bg-light mb-30">
                    <a class="breadcrumb-item text-dark" href="#">Home</a>
                    <a class="breadcrumb-item text-dark" href="#">Services</a>
                    <#if servicename?has_content>
                        <span class="breadcrumb-item active">${servicename}</span>
                    <#else>
                        <span class="breadcrumb-item active">Detail</span>
                    </#if>
                </nav>
            </div>
        </div>
    </div>
    
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
        
            let productId = document.getElementById("productCode").innerText;
            let productName = document.getElementById("productName").innerText;
            let productPrice = document.getElementById("productPrice").innerText;
            let productQty = document.getElementById("productQty").value;
            let cud = document.getElementById("cud").innerText;
            let agevolazione = (document.getElementById("agevolazione").innerText)=="true";
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
            
            fetch('https://api.shortcut.uno/v1/Ideale-request/request', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ productId, productName,productPrice,productQty,clientId,cud,agevolazione })
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
