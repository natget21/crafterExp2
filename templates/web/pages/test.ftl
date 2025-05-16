<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
<@crafter.body_top/>
    <!-- Header Section (Logo, Search Bar, etc.) -->
    <#include "/templates/web/fragments/header.ftl">
    


    <!-- Main Content Section -->
    <main>
        
        <p>----------</p>
        <p>${contentModel.slidername_s}</p>
        <p>----------</p>
        
        
    </main>

    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer.ftl">

    <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>