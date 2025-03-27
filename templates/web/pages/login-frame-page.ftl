<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
<@crafter.body_top/>

    <header>
        <div class="container-fluid">
            <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
                <div class="col-lg-4">
                    <a href="" class="text-decoration-none">
                        <span class="h1 text-uppercase text-primary bg-dark px-2">Ideale</span>
                        <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Partner</span>
                    </a>
                </div>
                <div class="col-lg-4 col-6 text-left">
                    
                </div>
                <div class="col-lg-4 col-6 text-right">
                    <a href="/" class=" text-uppercase px-4">Home</a>
                    <a href="javascript:void(0);" class="btn btn-primary text-uppercase px-4" id="toggle-btn">Register</a>
                </div>
            </div>
        </div>
    </header>
    

    <iframe id="partnerFrame" src="https://ideale.shortcut.uno/provider-login" width="100%" height="770px" frameborder="0"></iframe>
    
    

    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer.ftl">

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const button = document.getElementById("toggle-btn");
            const iframe = document.getElementById("partnerFrame");
            
            console.log("here")
    
            let isRegister = false;
    
            button.addEventListener("click", function () {
                if (isRegister) {
                    iframe.src = "https://ideale.shortcut.uno/provider-login"; 
                    button.textContent = "Register";
                } else {
                    iframe.src = "https://ideale.shortcut.uno/signup-partner?orgId=67ac78b641f3e43f93473810"; 
                    button.textContent = "Login";
                }
                isRegister = !isRegister;
            });
        });
    </script>

    <@crafter.body_bottom/>
</body>
</html>
