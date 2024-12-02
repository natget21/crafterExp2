<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en">
<#include "/templates/web/fragments/head.ftl">
<body>
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">
    
     <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-12">
                <nav class="breadcrumb bg-light mb-30">
                    <a class="breadcrumb-item text-dark" href="#">Home</a>
                    <a class="breadcrumb-item text-dark" href="#">Services</a>
                    <#if servicename?has_content>
                        <span class="breadcrumb-item active">${servicename}</span>
                    <#else>
                        <span class="breadcrumb-item active">Detail</span>
                    </#if>
                </nav>
            </div>
        </div>
    </div>
   
    <#include "/templates/web/components/product-detail.ftl"> 
    <#include "/templates/web/components/product-carousel.ftl">
   
    
    <#include "/templates/web/fragments/footer.ftl">
    <#include "/templates/web/fragments/scripts.ftl">
</body>
</html>