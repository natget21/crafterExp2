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
                    <a href="/home" class="btn btn-primary text-uppercase px-4" id="home-btn">home</a>
                </div>
            </div>
        </div>
    </header>
    

    <iframe src="" width="100%" height="600" frameborder="0"></iframe>


    <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>