<#import "/templates/system/common/crafter.ftl" as crafter />

<#if contentModel.logo_s?hasContent>
    <img src="${contentModel.logo_s?default("/static-assets/img/default/service-provider-default.png")}" alt="${contentModel.name_s}">
<#else>
    <img src="/static-assets/img/default/service-provider-default.png" alt="${contentModel.name_s}">
</#if>

