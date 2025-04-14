<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<head>
    <meta charset="utf-8">
    <title>Partner Detail</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Favicon -->
    <link href="/static-assets/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/static-assets/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/static-assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/static-assets/css/style.css" rel="stylesheet">
    
    <link rel="stylesheet" href="/static-assets/css/general-style.css" />
    <link rel="stylesheet" href="/static-assets/css/partner.css" />
    
    <@crafter.head/>
</head>

<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">

    <div class="content pb-5">
        <div class="banner_section banner_partners layout_padding d-flex align-items-center">
           Partners
        </div>
    </div>
    
    <div class="container">
        <#-- Retrieve 'id' parameter from the request -->
        <#assign partnerId = RequestParameters["id"]?default("")>
         
        <#-- Fetch partner data from the API if 'id' is provided -->
        <#if partnerId?has_content>
            <@controller path="/scripts/controllers/get-partner.groovy" />
        </#if>

        <#-- Display partner details if data is available -->
        <#if partnerData?has_content>
            <h1 class="best_taital text-center text-white p-0">${partnerData.partnerAzienda}</h1>
        <#else>
            <h1 class="best_taital text-center text-white p-0">Partner Not Found</h1>
        </#if>
    </div>
    
    <div  class="container">
       
    </div>

    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">
    <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
