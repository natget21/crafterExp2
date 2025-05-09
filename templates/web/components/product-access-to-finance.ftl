<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign product = siteItemService.getSiteItem(itemUrl)>
NOME: ${product.name_s}



<#if product?? && (product?size > 0)>
    <#list product?keys as key>
      <strong>${key}</strong> : ${product[key]}<br>
    </#list>
</#if>
