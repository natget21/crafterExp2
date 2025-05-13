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
    

    <iframe id="partnerFrame" src="https://innova.s3innovation.it/signup-client-company?orgId=68225356b40eed046fea171a" width="100%" height="750px" frameborder="0"></iframe>
    
    

    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

  

    <@crafter.body_bottom/>
</body>
</html>
