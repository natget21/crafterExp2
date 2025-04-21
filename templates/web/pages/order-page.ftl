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

     <iframe id="clientOrderIframe" src="" width="100%" height="750px" frameborder="0"></iframe>



    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer.ftl">


    
    <script>
    document.addEventListener("DOMContentLoaded", function () {
            let clientId = null;
            let crafterVadinUser = localStorage.getItem("crafterVadinUser");
                console.log(crafterVadinUser,"1")
            if (crafterVadinUser) {
                try {
                    let userData = JSON.parse(crafterVadinUser);
                      console.log("Parsed userData:", userData);
                    clientId = userData._id;

                    const themeStyle = "light";
                    const iframe = document.getElementById("clientOrderIframe");
                    console.log(iframe,"2")
                    if (iframe && clientId ) {
                    console.log(clientId,"3")
iframe.src = "https://ideale.shortcut.uno/client-order-management?themeStyle=" + themeStyle + "&clientId=" + clientId;
                         console.log("Setting iframe src to:", fullUrl);
                    }else{
                        console.warn("Iframe element or clientId missing.");
                    }
                } catch (e) {
                    console.error("Error parsing crafterVadinUser:", e);
                }
            } else {
                console.warn("No crafterVadinUser found in localStorage");
            }
        
    });
</script>
    <@crafter.body_bottom/>
</body>
</html>