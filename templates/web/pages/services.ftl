<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en">
<#include "/templates/web/fragments/head.ftl">
<body>
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/components/breadcrumb.ftl">
    
    <div class="container-fluid">
        <div class="row px-xl-5">
            <#include "/templates/web/components/shop-filters.ftl">
            <#include "/templates/web/components/shop-products.ftl">
        </div>
    </div>
    
    <#include "/templates/web/fragments/footer.ftl">
    <#include "/templates/web/fragments/scripts.ftl">
</body>
</html>