<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
<@crafter.body_top/>

    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">
    

    <iframe id="partnerFrame" src="https://ideale.shortcut.uno/signup-client?orgId=67ac78b641f3e43f93473810&themeStyle=light&headerTitle=Innovation Manager&switchMode=Ok" width="100%" height="750px" frameborder="0"></iframe>
    


    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer.ftl">

    <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">
    
    <script>
        window.addEventListener('message', function(event) {
            if (event.data && event.data.type === 'redirect') {
                window.location.href = "/login";
            }
        });
    </script>
   

    <@crafter.body_bottom/>
</body>
</html>
