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
        Hello World
    </main>
    
    <script>/*
        function buildMyOrdersLink() {
            const user = JSON.parse(localStorage.getItem("crafterVadinUser"));
            if(!user) return "";
            return "https://ideale.shortcut.uno/ideale-client-dash?token=" + user.access_token;
        }
        document.getElementById("myOrdersLink").href = buildMyOrdersLink();*/
    </script>
    <#include "/templates/web/fragments/footer.ftl">
    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>