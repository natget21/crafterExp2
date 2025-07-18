<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
<@crafter.body_top/>
    <#include "/templates/web/controllers/auth.ftl">
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">

    <main>
        <iframe id="myIframe" width="100%" height="400px"></iframe>
    </main>
    
    <script>
        function buildIframeLink() {
            const user = JSON.parse(localStorage.getItem("crafterVadinUser"));
            return 'https://ideale.shortcut.uno/ideale-client-dash?token=' + user.access_token;
        }   
        document.getElementById("myIframe").src = buildIframeLink();
    </script>

    <#include "/templates/web/fragments/footer.ftl">
    
    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>