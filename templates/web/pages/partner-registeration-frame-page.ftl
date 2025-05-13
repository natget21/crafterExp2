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
                        <img src="/static-assets/assets/ideale_logo.png" height="70px" />
                        <!-- <span class="h1 text-uppercase text-primary bg-dark px-2">Ideale</span> 
                        <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Partner</span> -->
                    </a>
                </div>
                <div class="col-lg-4 col-6 text-left">
                    
                </div>
            </div>
        </div>
    </header>
    
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">

    <iframe id="partnerFrame" src="https://dashboard.s3innovation.it/signup-partner?orgId=68225356b40eed046fea171a&themeStyle=light" width="100%" height="750px" frameborder="0"></iframe>
    
    

    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

   
    
        <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
