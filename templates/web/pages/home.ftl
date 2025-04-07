<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
<@crafter.body_top/>
    <!-- Header Section (Logo, Search Bar, etc.) -->
    <#include "/templates/web/fragments/header.ftl">
    
     <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">


    <!-- Main Content Section -->
    <main>
        <#include "/templates/web/components/home-slider.ftl"> 
        <#include "/templates/web/components/category-list.ftl"> 
        <#include "/templates/web/components/featured-service.ftl"> 
        <#include "/templates/web/components/provider-carousel.ftl">    
    </main>

    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer.ftl">

    <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>